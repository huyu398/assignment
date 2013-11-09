# README

## セットアップ方法

1. `bundle install`
2. `bundle exec guard`

### hubのインストール

[hub](https://github.com/github/hub)はGithubの操作をTerminalから実行するツールです。

1. `yum install hub` or `brew install hub`

## How to work

`ruby_002`を解く場合

1. `bundle exec rake solve\[ruby_002\]` ブランチを切る
2. Guardでのテストがオールグリーンになるまで解く!
3. `git commit -am 'message'` 回答をコミットする
4. `bundle exec rake pull_request` 回答をPull-Requestする
6. 完了!
