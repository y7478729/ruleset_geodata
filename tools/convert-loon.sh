#!/bin/bash
set -e

# ==========================================================
# Loon RuleSet Converter
# No Policy Mode
# Author: ruleset_geodata
# ==========================================================


BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

INPUT_DIR="${BASE_DIR}/loon"

OUTPUT_DIR="${BASE_DIR}/../loon-ruleset"



if [ ! -d "$INPUT_DIR" ]; then
    echo "ERROR: loon source directory not found"
    exit 1
fi



mkdir -p "$OUTPUT_DIR"



convert_file()
{

INPUT=$1
OUTPUT=$2
NAME=$3


TMP=$(mktemp)
RULE_TMP=$(mktemp)



cat > "$TMP" <<EOF
# NAME: ${NAME}
# AUTHOR: ruleset_geodata
# REPO: https://github.com/y7478729/ruleset_geodata
# UPDATED: $(date '+%Y-%m-%d %H:%M:%S')

EOF



# ==========================================================
# Rule statistics
# ==========================================================


DOMAIN=$(grep -c '^DOMAIN,' "$INPUT" || true)

DOMAIN_SUFFIX=$(grep -c '^DOMAIN-SUFFIX,' "$INPUT" || true)

DOMAIN_KEYWORD=$(grep -c '^DOMAIN-KEYWORD,' "$INPUT" || true)

DOMAIN_REGEX=$(grep -c '^DOMAIN-REGEX,' "$INPUT" || true)

URL_REGEX=$(grep -c '^URL-REGEX,' "$INPUT" || true)

IP_CIDR=$(grep -c '^IP-CIDR,' "$INPUT" || true)

IP_CIDR6=$(grep -c '^IP-CIDR6,' "$INPUT" || true)



cat >> "$TMP" <<EOF
# STATISTICS
# DOMAIN: ${DOMAIN}
# DOMAIN-SUFFIX: ${DOMAIN_SUFFIX}
# DOMAIN-KEYWORD: ${DOMAIN_KEYWORD}
# DOMAIN-REGEX: ${DOMAIN_REGEX}
# URL-REGEX: ${URL_REGEX}
# IP-CIDR: ${IP_CIDR}
# IP-CIDR6: ${IP_CIDR6}

EOF



# ==========================================================
# DOMAIN
# ==========================================================


grep -E '^(DOMAIN|DOMAIN-SUFFIX|DOMAIN-KEYWORD),' "$INPUT" \
>> "$RULE_TMP" || true



# ==========================================================
# REGEX
# ==========================================================


grep -E '^(DOMAIN-REGEX|URL-REGEX),' "$INPUT" \
>> "$RULE_TMP" || true



# ==========================================================
# IP
# ==========================================================


grep '^IP-CIDR,' "$INPUT" \
| awk '
{
 if ($0 ~ /no-resolve/)
    print
 else
    print $0 ",no-resolve"
}
' >> "$RULE_TMP" || true



grep '^IP-CIDR6,' "$INPUT" \
| awk '
{
 if ($0 ~ /no-resolve/)
    print
 else
    print $0 ",no-resolve"
}
' >> "$RULE_TMP" || true



# ==========================================================
# Remove duplicate
# ==========================================================


sort -fu "$RULE_TMP" >> "$TMP"



mv "$TMP" "$OUTPUT"

rm -f "$RULE_TMP"



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


convert_file \
"$FILE" \
"$OUTPUT_DIR/${NAME}.list" \
"$NAME"


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