module BookKeeping
  VERSION = 4
end
# Clase Diferencia entre el cuadrado de la suma y la suma de los cuadrados
class Squares
  def initialize(num)
    @numero = num
  end

  def square_of_sum
    y = 0
    (1..@numero).each { |x| y += x }
    y**2
  end

  def sum_of_squares
    y = 0
    (1..@numero).each { |x| y += x**2 }
    y
  end

  def difference
    Squares.new(@numero).square_of_sum - Squares.new(@numero).sum_of_squares
  end
end
