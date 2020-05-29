FROM curlimages/curl:latest

LABEL "com.github.actions.name"="xrea address register"
LABEL "com.github.actions.description"="this action register the ip address to xrea in order to enable acess to xrea from actions"
LABEL "com.github.actions.icon"="plus-circle"

LABEL "repository"="http://github.com/progrunner17/xrea_address_register"
LABEL "homepage"="https://github.com/progrunner17/xrea_address_register"
LABEL "maintainer"="Shotaro Gotanda <g.sho1500@gmail.com>"

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
# `/` of the container
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]


