
   Zim2Line
===============

Zim が出力した HTML ファイルをLine Works 掲示板で表示できる特殊なHTML形式に変換します。


### システム要求 ###

- vim ( 8.0 ~ )
- Node.js ( v10.19.0 ~ )


### インストール ###

```
npm install
sed -i '1 a const {TextDecoder, TextEncoder} = require("util");'  node_modules/whatwg-url/lib/encoding.js
bash ./install.sh
```

### 使い方 ###

1. 変換したいファイルを vim で開きます。
2. :Zim2Line


