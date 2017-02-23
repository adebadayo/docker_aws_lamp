# docker_aws_lamp
How to make LAMP Stack envirement on amazon linux by Docker

## LAMP環境用のイメージファイル作成
<pre>
docker build -t aws_lamp .
</pre>

## コンテナ起動

<pre>
docker run -i -t -p 50050:80 -v <開発環境のパス>:/var/www/html aws_lamp /bin/bash
</pre>
