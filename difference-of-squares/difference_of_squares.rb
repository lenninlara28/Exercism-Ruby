module BookKeeping
  VERSION = 4
end
# Clase Diferencia entre el cuadrado de la suma y la suma de los cuadrados
class Squares
  def initialize(num)
    @numero = num
  end

  def square_of_sum
    (1..@numero).reduce(:+)**2
  end

  def sum_of_squares
    (1..@numero).inject { |index, n| index + (n**2) }
  end

  def difference
    Squares.new(@numero).square_of_sum - Squares.new(@numero).sum_of_squares
  end
end
