# rtinytool
my R tiny utility

Rの日常の作業でよくある小さな処理を便利にこなしてくれるツール。

その場で適当な処理を書いても何処かへ行ってなくしてしまうので、
プールしておくためのパッケージ。

## write_by _unicode()

本来、Rのソースコード内では、
非ascii文字が利用される文字列は、リテラルで表現できないので、
エスケープされたユニコードを用いる必要がある。

この関数では、日本語等、
非ascii文字で表現される文字列のベクトルを渡すと
標準出力に、ascii文字だけで表現できるユニコード表現された
文字列ベクトルのリテラルをプリントしてくれる。
これをソースコードにコピペして使う。

```
> write_by_unicode(c("日本語","あ","い","う"))
c(
  "\u65e5\u672c\u8a9e",		# "日本語"
  "\u3042",		# "あ"
  "\u3044",		# "い"
  "\u3046",		# "う"
)
```


