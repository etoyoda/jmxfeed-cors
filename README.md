# jmxfeed-cors
## 気象庁防災情報XML Atom フィードに CORS ヘッダがついたことの試験とデモ

気象庁防災情報XML（以下 JMX）により発表される情報は、緊急地震速報を除き、気象庁ホームページから Atom フィードで提供されています。
2019年3月7日17時JST頃から、JMX Atomフィードとそこから指示されるXMLデータが CORS ヘッダつきで提供されるようになりました。
CORSヘッダとは何か、については [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) あたりを見てください。

要はこれにより、皆さまのウェブサイト上の JavaScript から JMX Atomフィードを読み込んで処理できるようになります。

以下、わずかながら、CORS ヘッダの試験・デモのプログラムです。

## 試験プログラム（シェルスクリプト）

[tester.sh](tester.sh) - 気象庁ホームページの8個のフィードすべてをダウンロードしてCORSヘッダの有無を確認します。

## デモ（JavaScript）

[00intv.html](00intv.html) - 単に setInterval タイマーのテストです。JMX Atom フィードを読みません。

[01rss.html](01rss.html) - 一度だけ JMX Atom フィード（extra.xsl）を読み込み、表示順をローテイションにしてみたらしい。

[02rssupd.html](02rssupd.html) - JMX Atom フィードを定期的に読み込み表示するテスト。
[デモサイト](https://www.toyoda-eizi.net/2019/jmxfeed-cors/02rssupd.html)
