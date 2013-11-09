# Q2. ruby_002
# Ruby002のインスタンスは、htmlタグの名前のメソッドを使うことができる。
# 何度かメソッドを呼び出した後に、Ruby002#to_htmlをするとネストしたタグを返します。
#
# ```ruby
# # 例
# tag_generator = Ruby002.new
# tag_generator.html.body.div.p.to_html
# #=> "<html><body><div><p></p></div></body></html>"
# ```
#
# 1. Ruby002.new.html.to_htmlの実行結果は<html></html>である
# 2. 下記のタグは、終了タグが存在しないため、終了タグをつけるとエラーになる
#    br, img, hr, meta, input, embed, area, base, col, keygen, link, param, source
#    Ruby002.new.meta.to_html => '<meta/>'
# 3. 下記のタグすべてに対応していること。
#    a, address, area, applet, b, base, basefont, bgsound, big, blink, blockquote, body, br, center, cite, code, dd, dir, div, dfn, dl, dt, em, font, h, head, hr, html, i, img, kbd, li, link, listing, map, marquee, menu, meta, multicol, nobr, noscript, ol, p, param, pre, q, s, samp, script, small, spacer, span, strike, strong, style, sub, sup, title, tt, u, ul, var, wbr, xmp

class Ruby002
  def initialize
    # do something
  end

  def to_html
    # do something
  end
end
