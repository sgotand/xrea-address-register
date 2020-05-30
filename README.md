# xrea-address-register

## 概要
APIでIPアドレス登録をすることで、XREAにgithub actionsからアクセス可能にするためのAction

## 使用例
アカウント名、サーバー名、APIキーを指定することで使える  
それぞれ、secretsに保管することを推奨する。

```yaml
deploy:
  runs-on: ubuntu-latest
  steps:
  - name: xrea ip address regisration
    uses: progrunner17/xrea_address_register
    with:
      xrea_account: ${{ secrets.XREA_ACCOUNT }}
      xrea_server: ${{ secrets.XREA_SERVER }}  # e.g. s1000.xrea.com
      xrea_api_key: ${{ secrets.XREA_API_KEY }}
```

