#!/bin/bash

yum -y install httpd mod_ssl epel-release
yum -y install boxes cowsay
mkdir -p /www
cat << EOF > /www/index.html
<pre>
$(cowsay -f dragon-and-cow LINUX | boxes -d boy)
</pre>
EOF

sed -i 's#^DocumentRoot "/var/www/html"#DocumentRoot "/www"#' /etc/httpd/conf/httpd.conf
sed -i 's#^<Directory "/var/www/html">#<Directory "/www">#' /etc/httpd/conf/httpd.conf

systemctl enable --now httpd
systemctl restart httpd

