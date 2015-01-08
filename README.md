
# Redmine表記ゆれ辞典プラグイン（redmine correct spelling plugin） #

Redmineの各プロジェクトに、「表記ゆれ辞典」（表記統一辞典）を追加するプラグインです。
  
各プロジェクトで表記を統一したい場合や、  
サイト運営時に  
**「あれ？うちのサイト上の正しい表記って『お客様』だっけ？『お客さま』だっけ？」**   
みたいなときに「正しい表記」と「誤った表記」を記載しておく一覧を作成できます。

「ID（＃）」と「よみ（ひらがな）」で昇順・降順のソートができます。

## スクリーンショット
![screenshot](http://otsukare-tion.com/wp-content/uploads/2015/01/redmine_correct_spelling_screenshot1.jpg)

## インストール方法

1. プラグインファイルをRedmineインストールフォルダの下の plugins に展開します。
2. bundle exec rake redmine:plugins:migrate RAILS_ENV=production を実行します。
3. 「ロールと権限」で各ロールに「表記ゆれ辞典プラグイン 」の権限設定をします。
4. プロジェクトの設定のモジュールタブで 「表記ゆれ辞典プラグイン」をチェックします。

## 動作確認済み環境

Redmine 2.5.2.stable,　2.6.0.stable,

## Licence

MIT License.

## Author

[kobat](https://github.com/kobat987)
