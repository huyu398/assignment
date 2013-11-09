# README

## セットアップ方法

1. `bundle install`
2. `bundle exec guard`

### hubのインストール

[hub](https://github.com/github/hub)はGithubの操作をTerminalから実行するツールです。

1. `yum install hub` or `brew install hub`

## How to work

1. ブランチを切る。`git checkout {assignment_name}`
2. 問題と解く。GuardでのテストがオールグリーンになったらOK!
3. 回答をコミットする。`git add {file_name} && git commit -m '{message}'`
4. ブランチをPushする。`git push enfactv {assignment_name}`
5. Pull-requestを送る。`hub pull-request -b enfactv:master -h enfactv:{assignment_name}`
6. 完了!
