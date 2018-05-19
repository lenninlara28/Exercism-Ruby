module BookKeeping
  VERSION = 1
end
# Clase Sieve de Eratostenes para encontrar todos los numeros primos desde 2
class Sieve
  def initialize(valor)
    @limite = valor
  end

  def primes
    primes = (2..@limite).to_a
    primes.each do |x|
      (x..@limite).each do |y|
        primes.delete(x * y) if x * y <= @limite
      end
    end
    primes
  end
end
