adduser --disabled-password --gecos "" inception
echo "wget https://wordpress.org/latest.tar.gz" | su - inception
echo "tar zxf latest.tar.gz" | su - inception
echo "rm latest.tar.gz" | su - inception
echo "mv wordpress public_html" | su - inception
