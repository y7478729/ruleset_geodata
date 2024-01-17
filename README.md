# 一、 geodata 规则集文件说明
## 1. 文件类型
① [Clash](https://github.com/Dreamacro/clash) geodata 规则集文件，包括：geosite.dat、Country.mmdb、geoip.dat 和 geoip.metadb（仅限 [Clash.Meta 内核](https://github.com/MetaCubeX/mihomo)）等  
② [sing-box](https://github.com/SagerNet/sing-box) geodata 规则集文件，包括：geosite.db 和 geoip.db 等
## 2. 数据源
① 每天凌晨 3 点（北京时间）自动构建，根据 [Loyalsoldier/v2ray-rules-dat](https://github.com/Loyalsoldier/v2ray-rules-dat) 和 [Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip) 进行深度定制，可点击查看包含的[域名列表](https://github.com/DustinWin/ruleset_geodata/tree/master/Domains)和 [IP 段列表](https://github.com/DustinWin/ruleset_geodata/tree/master/IPs)  
② `geosite,ads,🛑 广告拦截` 源采用 [privacy-protection-tools/anti-AD](https://github.com/privacy-protection-tools/anti-AD)  
③ `geosite,private,🔒 私有网络` 源采用 [v2fly/domain-list-community/private](https://github.com/v2fly/domain-list-community/blob/master/data/private) 和 [blackmatrix7/ios_rule_script/Lan](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Lan) 组合，并添加主流 [Clash dashboard 在线面板](https://github.com/DustinWin/clash_singbox-tools/tree/main/Clash-dashboard)域名（`clash.razord.top`、`clash.metacubex.one`、`yacd.haishan.me`、`yacd.metacubex.one` 和 `d.metacubex.one`）  
④ `geosite,microsoft-cn,Ⓜ️ 微软服务` 源采用 [v2fly/domain-list-community/microsoft@cn](https://github.com/v2fly/domain-list-community/blob/master/data/microsoft)  
⑤ `geosite,apple-cn,🍎 苹果服务` 源采用 [felixonmars/dnsmasq-china-list/apple.china.conf](https://github.com/felixonmars/dnsmasq-china-list)  
⑥ `geosite,google-cn,📢 谷歌服务` 源采用 [felixonmars/dnsmasq-china-list/google.china.conf](https://github.com/felixonmars/dnsmasq-china-list)  
⑦ `geosite,games-cn,🎮 游戏平台` 源采用 [v2fly/domain-list-community/category-games@cn](https://github.com/v2fly/domain-list-community/blob/master/data/category-games)、[blackmatrix7/ios_rule_script/SteamCN](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/SteamCN) 和 [blackmatrix7/ios_rule_script/GameDownloadCN](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Game/GameDownloadCN) 组合  
⑧ `geosite,netflix,🎥 奈飞视频` 源采用 [blackmatrix7/ios_rule_script/Netflix](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Netflix)  
⑨ `geosite,disney,📽️ 迪士尼+` 源采用 [blackmatrix7/ios_rule_script/Disney](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Disney)  
⑩ `geosite,max,🎞️ Max` 源采用 [blackmatrix7/ios_rule_script/HBO](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/HBO)  
⑪ `geosite,primevideo,🎬 Prime Video` 源采用 [blackmatrix7/ios_rule_script/PrimeVideo](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/PrimeVideo)  
⑫ `geosite,appletv,🍎 Apple TV+` 源采用 [blackmatrix7/ios_rule_script/AppleTV](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/AppleTV)  
⑬ `geosite,youtube,📹 油管视频` 源采用 [blackmatrix7/ios_rule_script/YouTube](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/YouTube)  
⑭ `geosite,tiktok,🎵 TikTok` 源采用 [blackmatrix7/ios_rule_script/TikTok](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/TikTok)  
⑮ `geosite,bilibili,📺 哔哩哔哩` 源采用 [blackmatrix7/ios_rule_script/BiliBili](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/BiliBili)  
⑯ `geosite,ai,🤖 人工智能` 源采用 [blackmatrix7/ios_rule_script/OpenAI](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/OpenAI)、[blackmatrix7/ios_rule_script/Bing](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Bing) 和 [blackmatrix7/ios_rule_script/BardAI](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/BardAI) 组合  
⑰ `geosite,networktest,📈 网络测试` 源采用 [blackmatrix7/ios_rule_script/Speedtest](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Speedtest) 和 IPv6 测试域名关键字（`keyword`，包括：`ipv6-test`、`test-ipv6`、`ipv6test` 和 `testipv6`）组合    
⑱ `geosite,proxy,🪜 代理域名` 源采用 [cokebar/gfwlist2dnsmasq](https://github.com/cokebar/gfwlist2dnsmasq) 生成的 [gfwlist](https://github.com/gfwlist/gfwlist) 和 [Loyalsoldier/domain-list-custom/geolocation-!cn.txt](https://github.com/Loyalsoldier/domain-list-custom) 组合  
⑲ `geosite,cn,🔗 直连域名` 源采用 [blackmatrix7/ios_rule_script/ChinaMax](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/ChinaMax)，添加 `static.adtidy.org` 域名，防止 [AdGuardHome](https://github.com/AdguardTeam/AdGuardHome) 作为 Clash 下游时检查更新失败（在 Clash 中必须使用国内 DNS 对其进行解析）  
⑳ `geoip,netflix,🎥 奈飞视频` 源采用 [blackmatrix7/ios_rule_script/Netflix/Netflix_IP.txt](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Netflix)  
㉑ `geoip,telegram,📲 电报消息` 源采用 [Telegram IP 段](https://core.telegram.org/resources/cidr.txt)  
㉒ `geoip,private,🔒 私有网络` 源采用 [blackmatrix7/ios_rule_script/Lan](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Lan)  
㉓ `geoip,cn,🇨🇳 国内 IP` 源采用 [GeoLite2/cn.txt](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data)、[17mon/china_ip_list](https://github.com/17mon/china_ip_list)、[gaoyifan/china-operator-ip](https://github.com/gaoyifan/china-operator-ip) 和 [blackmatrix7/ios_rule_script/ChinaIPs/ChinaIPs_IP.txt](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/ChinaIPs) 组合  
**规则名称与规则集文件的对应关系如下表：**
|文件名称|包含规则|
|-----|-----|
|geosite-all.dat 和 geosite-all.db|`ads`、`private`、`microsoft-cn`、`apple-cn`、`google-cn`、`games-cn`、`netflix`、`disney`、`max`、`primevideo`、`appletv`、`youtube`、`tiktok`、`bilibili`、`ai`、`networktest`、`proxy` 和 `cn`|
|geosite-all-lite.dat 和 geosite-all-lite.db|~~`ads`~~、`private`、`microsoft-cn`、`apple-cn`、`google-cn`、`games-cn`、`netflix`、`disney`、`max`、`primevideo`、`appletv`、`youtube`、`tiktok`、`bilibili`、`ai`、`networktest`、`proxy` 和 `cn`|
|geosite.dat 和 geosite.db|`ads`、`private`、`microsoft-cn`、`apple-cn`、`google-cn`、`games-cn`、`networktest`、`proxy` 和 `cn`|
|geosite-lite.dat 和 geosite-lite.db|~~`ads`~~、`private`、`microsoft-cn`、`apple-cn`、`google-cn`、`games-cn`、`networktest`、`proxy` 和 `cn`|
|Country-all.mmdb、geoip-all.dat、geoip-all.metadb 和 geoip-all.db|来源于 [Loyalsoldier/geoip](https://github.com/Loyalsoldier/geoip)，[点此查看](https://github.com/Loyalsoldier/geoip/tree/release/text)|
|Country.mmdb、geoip.dat、geoip.metadb 和 geoip.db|`netflix`、`telegram`、`private` 和 `cn`|
|Country-lite.mmdb、geoip-lite.dat、geoip-lite.metadb 和 geoip-lite.db|~~`netflix`~~、`telegram`、`private` 和 `cn`|
## 3. 文件下载（以 geosite.dat、geosite.db、Country.mmdb、geoip.dat、geoip.metadb 和 geoip.db 为例）
<table>
  <tr>
    <td rowspan="3">geosite.dat</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geosite.dat</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geosite.dat</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geosite.dat</td>
  </tr>
  <tr>
    <td rowspan="3">geosite.db</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/sing-box/geosite.db</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/geosite.db</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/sing-box/geosite.db</td>
  </tr>
  <tr>
    <td rowspan="3">Country.mmdb</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/Country.mmdb</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/Country.mmdb</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/Country.mmdb</td>
  </tr>
  <tr>
    <td rowspan="3">geoip.dat</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geoip.dat</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.dat</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geoip.dat</td>
  </tr>
  <tr>
    <td rowspan="3">geoip.metadb</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geoip.metadb</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.metadb</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/clash/geoip.metadb</td>
  </tr>
  <tr>
    <td rowspan="3">geoip.db</td>
    <td>GitHub 源：https://raw.githubusercontent.com/DustinWin/ruleset_geodata/sing-box/geoip.db</td>
  </tr>
  <tr>
    <td>jsDelivr 源：https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/geoip.db</td>
  </tr>
  <tr>
    <td>GitHub Proxy 源：https://mirror.ghproxy.com/https://raw.githubusercontent.com/DustinWin/ruleset_geodata/sing-box/geoip.db</td>
  </tr>
</table>

## 4. 文件导入
### ① 导入到 Linux 端（以 [ShellCrash](https://github.com/juewuy/ShellCrash) 导入 geosite.dat、geosite.db、Country.mmdb、geoip.dat、geoip.metadb 和 geoip.db 为例）
连接 SSH 后执行如下命令：
```
# Clash 内核
curl -o $CRASHDIR/geosite.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geosite.dat
curl -o $CRASHDIR/Country.mmdb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/Country.mmdb
curl -o $CRASHDIR/geoip.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.dat
# Clash.Meta 内核
curl -o $CRASHDIR/geoip.metadb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.metadb
# sing-box 内核
curl -o $CRASHDIR/geosite.db -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/geosite.db
curl -o $CRASHDIR/geoip.db -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/geoip.db
$CRASHDIR/start.sh restart
```
### ② 导入到 Windows 端（以 [Clash Verge](https://github.com/MetaCubeX/clash-verge) 导入 geosite.dat、Country.mmdb、geoip.dat 和 geoip.metadb 为例）
以管理员身份运行 CMD 命令提示符，执行如下命令：
```
taskkill /f /t /im "Clash Verge*"
taskkill /f /t /im Clash-Verge*
taskkill /f /t /im clash-meta*
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\geosite.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geosite.dat
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\Country.mmdb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/Country.mmdb
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\geoip.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.dat
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\geoip.metadb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.metadb
```
## 5. 文件拓展
### ① user.yaml（仅限 Clash.Meta 内核）
• `fake-ip-filter` 中添加[常用 fake-ip 地址过滤列表](https://github.com/juewuy/ShellCrash/blob/master/public/fake_ip_filter.list)，提高兼容性  
• `fake-ip-filter` 中添加 [TrackersList](https://github.com/XIU2/TrackersListCollection/all.txt)（udp 域名），防止 [BT 下载](https://github.com/c0re100/qBittorrent-Enhanced-Edition)无法连接 TrackersList UDP 协议  
<img src="https://user-images.githubusercontent.com/45238096/224113233-4d76dec2-495c-4790-a00e-538fc1469639.png" width="60%"/>  
• `fake-ip-filter` 中添加 AdGuardHome 相关域名（包括：`static.adtidy.org`、`adguardteam.github.io` 和 `anti-ad.net`），防止作为下游时检查更新和下载“DNS 黑名单”失败  
• 若想自己生成配置文件 user.yaml，可以 [Fork 本项目](https://github.com/DustinWin/ruleset_geodata/fork)后编辑 *.github/workflows/build.yml* 文件内的 `name: Generate geodata-xxx-user.yaml` 部分  
• 若 DNS 模式选用的是 `redir-host`，必须进行 DNS 分流（可以参考[Clash.Meta 内核 DNS 分流教程](https://github.com/DustinWin/clash_singbox-tutorials/tree/main/%E6%95%99%E7%A8%8B%E5%90%88%E9%9B%86/%E8%BF%9B%E9%98%B6%E7%AF%87)），可以进入 *.github/workflows/build.yml* 文件，编辑 `Generate geodata-redirhost-user.yaml` 部分，将 `nameserver` 中的 `🪜 代理域名`改成可以访问外网的策略组名称，或者直接将 `'https://dns.google/dns-query#🪜 代理域名'` 修改为 `'tls://dns.google'`  
• 导入 Linux 端（以导入 ShellCrash 为例）  
• 将下面命令中的`{DNS 模式}`替换为正在使用的 DNS 模式（`fakeip` 或 `redirhost`）  
• 连接 SSH 后执行如下命令：
```
curl -o $CRASHDIR/yamls/user.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geodata-{DNS 模式}-user.yaml
$CRASHDIR/start.sh restart
```
• 导入 Windows 端（以导入 Clash Verge 为例）  
• 首次使用可进入 Clash Verge->订阅，新建“Merge”类型的配置，完成后点击“保存”，右击新建的 Merge 文件，选择“启用”  
• 进入文件夹 *%APPDATA%\io.github.clash-verge-rev.clash-verge-rev\profiles*，找到与上一步新建的 Merge 文件相对应的 .yaml 文件，复制其文件名并替换下面命令中的`{文件名}`  
• 将下面命令中的`{DNS 模式}`替换为正在使用的 DNS 模式（`fakeip` 或 `redirhost`）  
• 以管理员身份打开 CMD 命令提示符，执行如下命令：
```
taskkill /f /t /im "Clash Verge*"
taskkill /f /t /im Clash-Verge*
taskkill /f /t /im clash-meta*
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\profiles\{文件名}.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geodata-{DNS 模式}-user.yaml
```
### ② 添加定时任务（以 ShellCrash 为例，安装路径为 */data/ShellCrash*）
• 连接 SSH 后执行 `vi $CRASHDIR/task/task.user`，按一下 Ins 键（Insert 键），粘贴如下内容：
```
# Clash 内核
201#curl -o /data/ShellCrash/geosite.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geosite.dat && curl -o /data/ShellCrash/Country.mmdb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/Country.mmdb && curl -o /data/ShellCrash/geoip.dat -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.dat && /data/ShellCrash/start.sh restart >/dev/null 2>&1#更新geodata路由规则文件
# Clash.Meta 内核
202#curl -o /data/ShellCrash/geoip.metadb -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.metadb && /data/ShellCrash/start.sh restart >/dev/null 2>&1#更新geodata路由规则文件
203#curl -o /data/ShellCrash/yamls/user.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geodata-{DNS 模式}-user.yaml && /data/ShellCrash/start.sh restart >/dev/null 2>&1#更新user.yaml
# sing-box 内核
204#curl -o /data/ShellCrash/geosite.db -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geosite.db && curl -o /data/ShellCrash/geoip.db -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/geoip.db && /data/ShellCrash/start.sh restart >/dev/null 2>&1#更新geodata路由规则文件

```
• 按一下 Esc 键（退出键），输入英文冒号`:`，继续输入 `wq` 并回车  
• 执行 `crash`，进入 ShellCrash->5 配置自动任务->1 添加自动任务，可以看到末尾就有添加的定时任务，输入对应的数字并回车后可设置执行条件
# 二、 ruleset 规则集文件说明
## 1. 文件类型
① Clash ruleset 规则集文件，格式为 `.yaml`  
② sing-box ruleset 规则集文件，格式有 `.json` 和 `.srs`
## 2. 数据源
① 每天凌晨 3 点（北京时间）自动构建  
② `rule-set,ads,🛑 广告拦截` 源采用 [privacy-protection-tools/anti-AD](https://github.com/privacy-protection-tools/anti-AD)  
③ `rule-set,private,🔒 私有网络` 源采用 [v2fly/domain-list-community/private](https://github.com/v2fly/domain-list-community/blob/master/data/private) 和 [blackmatrix7/ios_rule_script/Lan](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Lan) 组合，并添加主流 [Clash dashboard 在线面板](https://github.com/DustinWin/clash_singbox-tools/tree/main/Clash-dashboard)域名（`clash.razord.top`、`clash.metacubex.one`、`yacd.haishan.me`、`yacd.metacubex.one` 和 `d.metacubex.one`）  
④ `rule-set,microsoft-cn,Ⓜ️ 微软服务` 源采用 [v2fly/domain-list-community/microsoft@cn](https://github.com/v2fly/domain-list-community/blob/master/data/microsoft)  
⑤ `rule-set,apple-cn,🍎 苹果服务` 源采用 [felixonmars/dnsmasq-china-list/apple.china.conf](https://github.com/felixonmars/dnsmasq-china-list)  
⑥ `rule-set,google-cn,📢 谷歌服务` 源采用 [felixonmars/dnsmasq-china-list/google.china.conf](https://github.com/felixonmars/dnsmasq-china-list)  
⑦ `rule-set,games-cn,🎮 游戏平台` 源采用 [v2fly/domain-list-community/category-games@cn](https://github.com/v2fly/domain-list-community/blob/master/data/category-games)、[blackmatrix7/ios_rule_script/SteamCN](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/SteamCN) 和 [blackmatrix7/ios_rule_script/GameDownloadCN](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Game/GameDownloadCN) 组合  
⑧ `rule-set,netflix,🎥 奈飞视频` 源采用 [blackmatrix7/ios_rule_script/Netflix](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Netflix)  
⑨ `rule-set,disney,📽️ 迪士尼+` 源采用 [blackmatrix7/ios_rule_script/Disney](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Disney)  
⑩ `rule-set,max,🎞️ Max` 源采用 [blackmatrix7/ios_rule_script/HBO](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/HBO)  
⑪ `rule-set,primevideo,🎬 Prime Video` 源采用 [blackmatrix7/ios_rule_script/PrimeVideo](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/PrimeVideo)  
⑫ `rule-set,appletv,🍎 Apple TV+` 源采用 [blackmatrix7/ios_rule_script/AppleTV](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/AppleTV)  
⑬ `rule-set,youtube,📹 油管视频` 源采用 [blackmatrix7/ios_rule_script/YouTube](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/YouTube)  
⑭ `rule-set,tiktok,🎵 TikTok` 源采用 [blackmatrix7/ios_rule_script/TikTok](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/TikTok)  
⑮ `rule-set,bilibili,📺 哔哩哔哩` 源采用 [blackmatrix7/ios_rule_script/BiliBili](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/BiliBili)  
⑯ `rule-set,ai,🤖 人工智能` 源采用 [blackmatrix7/ios_rule_script/OpenAI](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/OpenAI)、[blackmatrix7/ios_rule_script/Bing](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Bing) 和 [blackmatrix7/ios_rule_script/BardAI](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/BardAI) 组合  
⑰ `rule-set,networktest,📈 网络测试` 源采用 [blackmatrix7/ios_rule_script/Speedtest](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Speedtest) 和 IPv6 测试域名关键字（`keyword`，包括：`ipv6-test`、`test-ipv6`、`ipv6test` 和 `testipv6`）组合    
⑱ `rule-set,proxy,🪜 代理域名` 源采用 [cokebar/gfwlist2dnsmasq](https://github.com/cokebar/gfwlist2dnsmasq) 生成的 [gfwlist](https://github.com/gfwlist/gfwlist) 和 [Loyalsoldier/domain-list-custom/geolocation-!cn.txt](https://github.com/Loyalsoldier/domain-list-custom) 组合  
⑲ `rule-set,cn,🔗 直连域名` 源采用 [blackmatrix7/ios_rule_script/ChinaMax](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/ChinaMax)，添加 `static.adtidy.org` 域名，防止 [AdGuardHome](https://github.com/AdguardTeam/AdGuardHome) 作为 Clash 下游时检查更新失败（在 Clash 中必须使用国内 DNS 对其进行解析）  
⑳ `rule-set,telegramip,📲 电报消息` 源采用 [Telegram IP 段](https://core.telegram.org/resources/cidr.txt)  
㉑ `rule-set,privateip,🔒 私有网络` 源采用 [blackmatrix7/ios_rule_script/Lan](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/Lan)  
㉒ `rule-set,cnip,🇨🇳 国内 IP` 源采用 [GeoLite2/cn.txt](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data)、[17mon/china_ip_list](https://github.com/17mon/china_ip_list)、[gaoyifan/china-operator-ip](https://github.com/gaoyifan/china-operator-ip) 和 [blackmatrix7/ios_rule_script/ChinaIPs/ChinaIPs_IP.txt](https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/ChinaIPs) 组合
## 3. 文件使用
### ① Clash 内核
- 注：以下只是节选，请酌情套用

```
proxy-groups:
  - {name: 📈 网络测试, type: select, proxies: [🎯 全球直连, 🇭🇰 香港节点, 🇹🇼 台湾节点, 🇯🇵 日本节点, 🇰🇷 韩国节点, 🇸🇬 新加坡节点, 🇺🇸 美国节点]}

  - {name: 🔗 直连域名, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 🪜 代理域名, type: select, proxies: [🚀 节点选择, 🎯 全球直连]}

  - {name: 🎮 游戏平台, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 🎥 奈飞视频, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 📽️ 迪士尼+, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 🎞️ Max, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 🎬 Prime Video, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 🍎 Apple TV+, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 📹 油管视频, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 🎵 TikTok, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 📺 哔哩哔哩, type: select, proxies: [🎯 全球直连, 🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点]}

  - {name: 🤖 人工智能, type: select, proxies: [🚀 节点选择, 🇭🇰 香港节点, 🇯🇵 日本节点, 🇸🇬 新加坡节点, 🇺🇸 美国节点]}

  - {name: Ⓜ️ 微软服务, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 📢 谷歌服务, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 🍎 苹果服务, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 🇨🇳 国内 IP, type: select, proxies: [🎯 全球直连, 🚀 节点选择]}

  - {name: 📲 电报消息, type: select, proxies: [🚀 节点选择]}

  - {name: 🖥️ 直连软件, type: select, proxies: [🎯 全球直连]}

  - {name: 🔒 私有网络, type: select, proxies: [🎯 全球直连]}

  - {name: 🛑 广告拦截, type: select, proxies: [REJECT]}

  - {name: 🎯 全球直连, type: select, proxies: [DIRECT]}

rule-providers:
  ads:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/ads.yaml"
    path: ./ruleset/ads.yaml
    interval: 86400

  private:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/private.yaml"
    path: ./ruleset/private.yaml
    interval: 86400

  microsoft-cn:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/microsoft-cn.yaml"
    path: ./ruleset/microsoft-cn.yaml
    interval: 86400

  apple-cn:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/apple-cn.yaml"
    path: ./ruleset/apple-cn.yaml
    interval: 86400

  google-cn:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/google-cn.yaml"
    path: ./ruleset/google-cn.yaml
    interval: 86400

  games-cn:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/games-cn.yaml"
    path: ./ruleset/games-cn.yaml
    interval: 86400

  netflix:
    type: http
    behavior: classical
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/netflix.yaml"
    path: ./ruleset/netflix.yaml
    interval: 86400

  disney:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/disney.yaml"
    path: ./ruleset/disney.yaml
    interval: 86400

  max:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/max.yaml"
    path: ./ruleset/max.yaml
    interval: 86400

  primevideo:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/primevideo.yaml"
    path: ./ruleset/primevideo.yaml
    interval: 86400

  appletv:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/appletv.yaml"
    path: ./ruleset/appletv.yaml
    interval: 86400

  youtube:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/youtube.yaml"
    path: ./ruleset/youtube.yaml
    interval: 86400

  tiktok:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/tiktok.yaml"
    path: ./ruleset/tiktok.yaml
    interval: 86400

  bilibili:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/bilibili.yaml"
    path: ./ruleset/bilibili.yaml
    interval: 86400

  ai:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/ai.yaml"
    path: ./ruleset/ai.yaml
    interval: 86400

  networktest:
    type: http
    behavior: classical
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/networktest.yaml"
    path: ./ruleset/networktest.yaml
    interval: 86400

  applications:
    type: http
    behavior: classical
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/applications.yaml"
    path: ./ruleset/applications.yaml
    interval: 86400

  proxy:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/proxy.yaml"
    path: ./ruleset/proxy.yaml
    interval: 86400

  cn:
    type: http
    behavior: domain
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/cn.yaml"
    path: ./ruleset/cn.yaml
    interval: 86400

  telegramip:
    type: http
    behavior: ipcidr
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/telegramip.yaml"
    path: ./ruleset/telegramip.yaml
    interval: 86400

  privateip:
    type: http
    behavior: ipcidr
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/privateip.yaml"
    path: ./ruleset/privateip.yaml
    interval: 86400

  cnip:
    type: http
    behavior: ipcidr
    url: "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/cnip.yaml"
    path: ./ruleset/cnip.yaml
    interval: 86400

rules:
  - RULE-SET,ads,🛑 广告拦截
  - RULE-SET,private,🔒 私有网络
  - RULE-SET,microsoft-cn,Ⓜ️ 微软服务
  - RULE-SET,apple-cn,🍎 苹果服务
  - RULE-SET,google-cn,📢 谷歌服务
  - RULE-SET,games-cn,🎮 游戏平台
  - RULE-SET,netflix,🎥 奈飞视频
  - RULE-SET,disney,📽️ 迪士尼+
  - RULE-SET,max,🎞️ Max
  - RULE-SET,primevideo,🎬 Prime Video
  - RULE-SET,appletv,🍎 Apple TV+
  - RULE-SET,youtube,📹 油管视频
  - RULE-SET,tiktok,🎵 TikTok
  - RULE-SET,bilibili,📺 哔哩哔哩
  - RULE-SET,ai,🤖 人工智能
  - RULE-SET,networktest,📈 网络测试
  - RULE-SET,applications,🖥️ 直连软件
  - RULE-SET,proxy,🪜 代理域名
  - RULE-SET,cn,🔗 直连域名
  - RULE-SET,telegramip,📲 电报消息,no-resolve
  - RULE-SET,privateip,🔒 私有网络,no-resolve
  - RULE-SET,cnip,🇨🇳 国内 IP,no-resolve
```
### ② sing-box 内核
- 注：以下只是节选，请酌情套用

```
{
  "outbounds": [
    {
      "tag": "🚀 节点选择",
      "type": "selector",
      "outbounds": [
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇯🇵 日本节点",
        "🇰🇷 韩国节点",
        "🇸🇬 新加坡节点",
        "🇺🇸 美国节点",
        "🇬🇧 英国节点"
      ]
    },
    {
      "tag": "📈 网络测试",
      "type": "selector",
      "outbounds": [
        "🎯 全球直连",
        "🇭🇰 香港节点",
        "🇹🇼 台湾节点",
        "🇯🇵 日本节点",
        "🇰🇷 韩国节点",
        "🇸🇬 新加坡节点",
        "🇺🇸 美国节点",
        "🇬🇧 英国节点"
      ]
    },
    {
      "tag": "🔗 直连域名",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "🪜 代理域名",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🎯 全球直连" ]
    },
    {
      "tag": "🎮 游戏平台",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "🎥 奈飞视频",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "📽️ 迪士尼+",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "🎞️ Max",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "🎬 Prime Video",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "🍎 Apple TV+",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "📹 油管视频",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "🎵 TikTok",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "📺 哔哩哔哩",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点" ]
    },
    {
      "tag": "🤖 人工智能",
      "type": "selector",
      "outbounds": [ "🚀 节点选择", "🇭🇰 香港节点", "🇯🇵 日本节点", "🇸🇬 新加坡节点", "🇺🇸 美国节点" ]
    },
    {
      "tag": "Ⓜ️ 微软服务",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "📢 谷歌服务",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "🍎 苹果服务",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "🇨🇳 国内 IP",
      "type": "selector",
      "outbounds": [ "🎯 全球直连", "🚀 节点选择" ]
    },
    {
      "tag": "📲 电报消息",
      "type": "selector",
      "outbounds": ["🚀 节点选择"]
    },
    {
      "tag": "🔒 私有网络",
      "type": "selector",
      "outbounds": ["🎯 全球直连"]
    },
    {
      "tag": "🎯 全球直连",
      "type": "selector",
      "outbounds": ["DIRECT"]
    },
    {
      "tag": "🛑 广告拦截",
      "type": "selector",
      "outbounds": ["REJECT"]
    },
    {
      "tag": "DIRECT",
      "type": "direct"
    },
    {
      "tag": "REJECT",
      "type": "block"
    }
  ],
  "route": {
    "rules": [
      {
        "rule_set": "ads",
        "outbound": "🛑 广告拦截"
      },
      {
        "rule_set": "private",
        "outbound": "🔒 私有网络"
      },
      {
        "rule_set": "microsoft-cn",
        "outbound": "Ⓜ️ 微软服务"
      },
      {
        "rule_set": "apple-cn",
        "outbound": "🍎 苹果服务"
      },
      {
        "rule_set": "google-cn",
        "outbound": "📢 谷歌服务"
      },
      {
        "rule_set": "games-cn",
        "outbound": "🎮 游戏平台"
      },
      {
        "rule_set": "netflix",
        "outbound": "🎥 奈飞视频"
      },
      {
        "rule_set": "disney",
        "outbound": "📽️ 迪士尼+"
      },
      {
        "rule_set": "max",
        "outbound": "🎞️ Max"
      },
      {
        "rule_set": "primevideo",
        "outbound": "🎬 Prime Video"
      },
      {
        "rule_set": "appletv",
        "outbound": "🍎 Apple TV+"
      },
      {
        "rule_set": "youtube",
        "outbound": "📹 油管视频"
      },
      {
        "rule_set": "tiktok",
        "outbound": "🎵 TikTok"
      },
      {
        "rule_set": "bilibili",
        "outbound": "📺 哔哩哔哩"
      },
      {
        "rule_set": "ai",
        "outbound": "🤖 人工智能"
      },
      {
        "rule_set": "networktest",
        "outbound": "📈 网络测试"
      },
      {
        "rule_set": "proxy",
        "outbound": "🪜 代理域名"
      },
      {
        "rule_set": "cn",
        "outbound": "🔗 直连域名"
      },
      {
        "rule_set": "telegramip",
        "outbound": "📲 电报消息"
      },
      {
        "rule_set": "privateip",
        "outbound": "🔒 私有网络"
      },
      {
        "rule_set": "cnip",
        "outbound": "🇨🇳 国内 IP"
      }
    ],
    "rule_set": [
      {
        "tag": "ads",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/ads.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "private",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/private.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "microsoft-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/microsoft-cn.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "apple-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/apple-cn.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "google-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/google-cn.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "games-cn",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/games-cn.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "netflix",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/netflix.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "disney",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/disney.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "max",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/max.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "primevideo",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/primevideo.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "appletv",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/appletv.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "youtube",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/youtube.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "tiktok",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/tiktok.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "bilibili",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/bilibili.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "ai",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/ai.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "networktest",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/networktest.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "proxy",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/proxy.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "cn",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/cn.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "telegramip",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/telegramip.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "privateip",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/privateip.srs",
        "download_detour": "DIRECT"
      },
      {
        "tag": "cnip",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@sing-box/cnip.srs",
        "download_detour": "DIRECT"
      }
    ]
  }
}
```
## 4. 文件拓展
### ① user.yaml（仅限 Clash.Meta 内核）
• `fake-ip-filter` 中添加[常用 fake-ip 地址过滤列表](https://github.com/juewuy/ShellCrash/blob/master/public/fake_ip_filter.list)，提高兼容性  
• `fake-ip-filter` 中添加 [TrackersList](https://github.com/XIU2/TrackersListCollection/all.txt)（udp 域名），防止 [BT 下载](https://github.com/c0re100/qBittorrent-Enhanced-Edition)无法连接 TrackersList UDP 协议  
<img src="https://user-images.githubusercontent.com/45238096/224113233-4d76dec2-495c-4790-a00e-538fc1469639.png" width="60%"/>  
• `fake-ip-filter` 中添加 AdGuardHome 相关域名（包括：`static.adtidy.org`、`adguardteam.github.io` 和 `anti-ad.net`），防止作为下游时检查更新和下载“DNS 黑名单”失败  
• 若想自己生成配置文件 user.yaml，可以 [Fork 本项目](https://github.com/DustinWin/ruleset_geodata/fork)后编辑 *.github/workflows/build.yml* 文件内的 `name: Generate ruleset-xxx-user.yaml` 部分  
• 若 DNS 模式选用的是 `redir-host`，必须进行 DNS 分流（可以参考[Clash.Meta 内核 DNS 分流教程](https://github.com/DustinWin/clash_singbox-tutorials/tree/main/%E6%95%99%E7%A8%8B%E5%90%88%E9%9B%86/%E8%BF%9B%E9%98%B6%E7%AF%87)），可以进入 *.github/workflows/build.yml* 文件，编辑 `Generate ruleset-redirhost-user.yaml` 部分，将 `nameserver` 中的 `🪜 代理域名`改成可以访问外网的策略组名称，或者直接将 `'https://dns.google/dns-query#🪜 代理域名'` 修改为 `'tls://dns.google'`  
• 导入 Linux 端（以导入 ShellCrash 为例）  
• 将下面命令中的`{DNS 模式}`替换为正在使用的 DNS 模式（`fakeip` 或 `redirhost`）  
• 连接 SSH 后执行如下命令：
```
curl -o $CRASHDIR/yamls/user.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/ruleset-{DNS 模式}-user.yaml
$CRASHDIR/start.sh restart
```
• 导入 Windows 端（以导入 Clash Verge 为例）  
• 首次使用可进入 Clash Verge->订阅，新建“Merge”类型的配置，完成后点击“保存”，右击新建的 Merge 文件，选择“启用”  
• 进入文件夹 *%APPDATA%\io.github.clash-verge-rev.clash-verge-rev\profiles*，找到与上一步新建的 Merge 文件相对应的 .yaml 文件，复制其文件名并替换下面命令中的`{文件名}`
• 将下面命令中的`{DNS 模式}`替换为正在使用的 DNS 模式（`fakeip` 或 `redirhost`）  
• 以管理员身份打开 CMD 命令提示符，执行如下命令：
```
taskkill /f /t /im "Clash Verge*"
taskkill /f /t /im Clash-Verge*
taskkill /f /t /im clash-meta*
curl -o %APPDATA%\io.github.clash-verge-rev.clash-verge-rev\profiles\{文件名}.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/ruleset-{DNS 模式}-user.yaml
```
### ② 添加定时任务（以 ShellCrash 为例，安装路径为 */data/ShellCrash*）
• 连接 SSH 后执行 `vi $CRASHDIR/task/task.user`，按一下 Ins 键（Insert 键），粘贴如下内容：
```
201#curl -o /data/ShellCrash/yamls/user.yaml -L https://cdn.jsdelivr.net/gh/DustinWin/ruleset_geodata@clash/ruleset-{DNS 模式}-user.yaml && /data/ShellCrash/start.sh restart >/dev/null 2>&1#更新user.yaml
```
• 按一下 Esc 键（退出键），输入英文冒号`:`，继续输入 `wq` 并回车  
• 执行 `crash`，进入 ShellCrash->5 配置自动任务->1 添加自动任务，可以看到末尾就有添加的定时任务，输入对应的数字并回车后可设置执行条件
