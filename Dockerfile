FROM amazonlinux
MAINTAINER k.nakama

RUN yum update -y

#php/mysql
RUN yum install -y httpd24 php56 mysql55-server php56-mysqlnd

#appache自動起動設定
RUN chkconfig httpd on

#wgetインス
RUN yum install -y wget

#vimインス
RUN yum install -y vim

#epelレポジトリをダウンロード
RUN wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

#epelレポジトリをインストール
RUN rpm --upgrade --verbose --hash epel-release-6-8.noarch.rpm

#phpMyAdmin インストール
RUN yum --enablerepo=epel install -y phpMyAdmin

#phpMyAdmin設定ファイル変更
COPY phpMyAdmin.conf /etc/httpd/conf.d/
