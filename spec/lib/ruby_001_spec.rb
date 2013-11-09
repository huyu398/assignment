require 'spec_helper'
require_ruby('ruby_001')

describe Ruby001 do
  describe '#solve' do
    subject { Ruby001.new(size).solve }

    patterns = {
      1 => 1,
      2 => 0,
      3 => 0,
      4 => 2,
      5 => 10,
      6 => 4,
      7 => 40,
      8 => 92,
      9 => 352,
      10 => 724,
    }
    patterns.each do |k, v|
      context "given #{k}" do
        let(:size) { k }
        it "returns #{v}" do
          expect(subject).to eql v
        end
      end
    end
  end
end
