echo -e "[mongodb-org-3.4]\nname=MongoDB 3.4 Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/\ngpgcheck=0\nenabled=1\n" > /etc/yum.repos.d/mongodb-org-3.4.repo

yum install mongodb-org-tools -y

yum install mongodb-org-shell -y
