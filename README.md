# jmxfeed-cors
## 気象庁防災情報XML Atom フィードに CORS ヘッダがついたことの試験とデモ

気象庁防災情報XML（以下 JMX）により発表される情報は、緊急地震速報を除き、気象庁ホームページから Atom フィードで提供されています。
2019年3月7日17時JST頃から、JMX Atomフィードとそこから指示されるXMLデータが CORS ヘッダつきで提供されるようになりました。
CORSヘッダとは何か、については [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) あたりを見てください。
これにより、皆さまのウェブサイト上の JavaScript から JMX Atomフィードを読み込んで処理できるようになります。

以下、わずかながら、CORS ヘッダの試験・デモのプログラムです。

## 試験プログラム（シェルスクリプト）


