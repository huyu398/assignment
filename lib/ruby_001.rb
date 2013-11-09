# Q1. [エイトクイーン問題](http://ja.wikipedia.org/wiki/%E3%82%A8%E3%82%A4%E3%83%88%E3%83%BB%E3%82%AF%E3%82%A4%E3%83%BC%E3%83%B3)
# 与えられたマスのサイズに対して、バリエーション解の数を答えてください
class Solver
  NOT_FOUND = 0
  Q = true

  def initialize(size)
    @size = size
    @row = Array.new(@size)
    @col = []
    @dpos = []
    @dneg = []
    @count = 0
  end

  def solve
    current_position = 0
    put_queen_at(current_position)
    @count
  end

  private
  def put_queen_at(lnum = 0)
    lnum += 1 while @row[lnum]
    return @count += 1 if @row.all?

    @size.times do |idx|
      pos_idx = lnum + idx
      neg_idx = lnum - idx + @size - 1

      next if [@col[idx], @dpos[pos_idx], @dneg[neg_idx]].include?(Q)

      @row[lnum] = idx
      @col[idx] = @dpos[pos_idx] = @dneg[neg_idx] = Q

      put_queen_at(lnum + 1)

      @row[lnum] = @col[idx] = @dpos[pos_idx] = @dneg[neg_idx] = nil
    end
  end
end
