wget 'https://www.houzi-blog.top/kp.dat' -O files/usr/share/koolproxy/data/rules/kp.dat
wget 'https://www.houzi-blog.top/koolproxy.txt' -O files/usr/share/koolproxy/data/rules/koolproxy.txt
wget 'https://www.houzi-blog.top/daily.txt' -O files/usr/share/koolproxy/data/rules/daily.txt
wget 'https://gitee.com/godros/godproxy/raw/master/rules/kpr_our_rule.txt' -O files/usr/share/koolproxy/data/rules/user.txt
wget 'https://github.com/houzi-/CDN/blob/master/binary/v3.8.5/arm' -O files/bin/arm
wget 'https://github.com/houzi-/CDN/blob/master/binary/v3.8.5/mips' -O files/bin/mips
wget 'https://github.com/houzi-/CDN/blob/master/binary/v3.8.5/mipsel' -O files/bin/mipsel
wget 'https://github.com/houzi-/CDN/blob/master/binary/v3.8.5/x86_64' -O files/bin/x86_64
#wget 'https://koolproxy.com/downloads/i386' -O files/bin/i386
#chmod +x files/bin/*
wget https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt -O- | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/youku/d' files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}/d' files/usr/share/koolproxy/dnsmasq.adblock

