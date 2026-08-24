#!/bin/bash
set -e
# ==========================================================
# Loon RuleSet Converter
# Author: ruleset_geodata
# ==========================================================
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT_DIR="${BASE_DIR}/loon"
OUTPUT_DIR="${BASE_DIR}/../loon-ruleset"
CONF_FILE="${BASE_DIR}/loon.conf"
if [ ! -d "$INPUT_DIR" ]; then
    echo "ERROR: loon source directory not found"
    exit 1
fi
if [ ! -f "$CONF_FILE" ]; then
    echo "ERROR: loon.conf not found"
    exit 1
fi
mkdir -p "$OUTPUT_DIR"
source "$CONF_FILE"
convert_file()
{
INPUT=$1
OUTPUT=$2
NAME=$3
POLICY=$4
TMP=$(mktemp)
cat > "$TMP" <<EOF
# NAME: ${NAME}
# AUTHOR: ruleset_geodata
# REPO: https://github.com/y7478729/ruleset_geodata
# UPDATED: $(date '+%Y-%m-%d %H:%M:%S')
EOF
# ==========================
# DOMAIN
# ==========================
grep -E '^(DOMAIN|DOMAIN-SUFFIX|DOMAIN-KEYWORD),' "$INPUT" \
| sed "s/$/,$POLICY/" \
>> "$TMP" || true
# ==========================
# REGEX
# ==========================
grep -E '^(DOMAIN-REGEX|URL-REGEX),' "$INPUT" \
| sed "s/$/,$POLICY/" \
>> "$TMP" || true
# ==========================
# IP
# ==========================
grep '^IP-CIDR,' "$INPUT" \
| awk -v p="$POLICY" '
{
 if ($0 ~ /no-resolve/)
     print $0 "," p
 else
     print $0 ",no-resolve," p
}
' >> "$TMP" || true
grep '^IP-CIDR6,' "$INPUT" \
| awk -v p="$POLICY" '
{
 if ($0 ~ /no-resolve/)
     print $0 "," p
 else
     print $0 ",no-resolve," p
}
' >> "$TMP" || true
# ==========================
# Remove duplicate rules
# Keep header
# ==========================
awk '
BEGIN{header=1}
{
 if(header && /^#/)
 {
   print
   next
 }
 header=0
 if(!seen[$0]++)
   print
}
' "$TMP" > "$OUTPUT"
rm -f "$TMP"
echo "Generated:"
echo "$OUTPUT"
}
generate_group()
{
TYPE=$1
for FILE in "$INPUT_DIR/$TYPE"/*/*.list
do
[ -f "$FILE" ] || continue
NAME=$(basename "$(dirname "$FILE")")
POLICY="${!NAME}"
if [ -z "$POLICY" ]; then
    echo "Skip $NAME (no policy)"
    continue
fi
convert_file \
"$FILE" \
"$OUTPUT_DIR/${NAME}.list" \
"$NAME" \
"$POLICY"
done
}
echo "================================"
echo " Generate Loon RuleSet"
echo "================================"
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"
generate_group domains
generate_group ips
echo
echo "Done."
echo "Output:"
echo "$OUTPUT_DIR"
