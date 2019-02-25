#安装nginx 1.12.2:
#rpm -ivh http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-1.12.2-1.el7_4.ngx.x86_64.rpm
yum install nginx -y

#常用命令

# 服务状态
# systemctl status nginx
# 服务启动
# systemctl start nginx
# 服务停止
# systemctl stop nginx
# 服务重启
# systemctl restart nginx



#安装python3.6

yum install python36

#安装pip3

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python36 get-pip.py


#安装虚拟环境

pip3 install virtualenv

pip3 install virtualenvwrapper


echo export WORKON_HOME=~/.virtualenvs >>  bashrc
echo export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6 >>  bashrc
echo source /usr/local/bin/virtualenvwrapper.sh >>  bashrc
#在.bashrc写入
# vim .bashrc

# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.6
# source /usr/local/bin/virtualenvwrapper.sh
source .bashrc 

