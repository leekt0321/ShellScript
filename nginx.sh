#!/bin/bash
yum -y install epel-release > /dev/null 2>&1
yum -y install cowsay boxes > /dev/null 2>&1

# 패키지 설치
PKG="nginx"
yum -y install $PKG > /dev/null 2>&1
[ $? -eq 0 ] && echo "[ OK ] $PKG installed." || echo "[ FAIL ] $PKG not installed."

# 서비스 설정
cat << EOF > /usr/share/nginx/html/index.html
<pre>
$(cowsay -f dragon-and-cow "dltoRLrk wlrma skfkd wkdgkssgkwksmsrjdi?" | boxes -d boy)
</pre>
EOF
[ $? -eq 0 ] && echo "[ OK ] index.html configured." || echo "[ FAIL ] index.html not configured."

# 서비스 기동
systemctl enable nginx >/dev/null 2>&1
systemctl start nginx
[ $? -eq 0 ] && echo "[ OK ] nginx started." || echo "[ FAIL ] nginx not started."