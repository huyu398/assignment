require 'spec_helper'
require_ruby('ruby_002')
# Rspec for Q.2 ruby_002
# lib/ruby_002.rb

describe Ruby002 do
  subject { Ruby002.new }

  describe '#to_html' do
    context 'when it is executed ".html.body.div.p.to_html"' do
      it 'returns <html><body><div><p></p></div></body></html>' do
        html = '<html><body><div><p></p></div></body></html>'
        expect(subject.html.body.div.p.to_html).to eql html
      end
    end

    context 'when it is executed ".div.p.span"' do
      it 'returns <div><p><span></span></p></div>' do
        html = '<div><p><span></span></p></div>'
        expect(subject.div.p.span.to_html).to eql html
      end
    end

    context 'before do nothing' do
      it 'returns ""' do
        expect(subject.to_html).to eql ""
      end
    end
  end

  describe '#meta' do
    it 'returns <meta/>' do
      expect(subject.meta.to_html).to eql '<meta/>'
    end
  end
end
