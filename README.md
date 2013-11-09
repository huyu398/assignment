# README

## セットアップ方法

1. `bundle install`
2. `bundle exec guard`

### hubのインストール

[hub](https://github.com/github/hub)はGithubの操作をTerminalから実行するツールです。

1. `yum install hub` or `brew install hub`

## How to work

問題を解いてから、回答を送るまでの流れをやってみます。

### 1. 問題のファイル名を確認する

  - `ls lib/`
  - `ruby_001.rb`を解いてみる

### 2. 問題を解くためにブランチを切る

  - `bundle exec rake solve`
  - 問題名を求められるので、`ruby_001`と入力する

### 3. 問題を解く

  - guardを起動する
    - `bundle exec guard`
    - オールグリーンになるまで解いてみる

### 5. コミットする

  - `git commit -am '{message}'`

### 6. Pull-requestを送る

  - 初めて送る場合
    - bundle exec rake pull_request
  - 2回目以降
    - すでにPull-requestがあるよ！っていわれる場合は、ブランチをPushするだけでいい。
    - `git push origin {ブランチ名}`

### 7. 完了！
