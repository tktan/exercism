module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(n)
    @ns = *(1..n)
  end

  def square_of_sum
    @ns.sum ** 2
  end

  def sum_of_squares
    @ns.map { |n| n ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
