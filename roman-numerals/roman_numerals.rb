# Para El test bookkeeping
module BookKeeping
  VERSION = 2
end
# Conversor de Numeros a Numeros Romanos
class Integer
  def to_roman
    numero = self
    des = []
    4.times do
      des << numero % 10
      numero /= 10
    end
    "#{m(des[3])}#{c(des[2])}#{d(des[1])}#{u(des[0])}"
  end

  def m(miles)
    case miles
    when 1, 2, 3 then 'M' * miles
    end
  end

  def c(centenas)
    case centenas
    when 1, 2, 3 then 'C' * centenas
    when 4 then 'CD'
    when 5 then 'D'
    when 6, 7, 8 then 'D' + 'C' * (centenas - 5)
    when 9 then 'CM'
    end
  end

  def d(decenas)
    case decenas
    when 1, 2, 3 then 'X' * decenas
    when 4 then 'XL'
    when 5 then 'L'
    when 6, 7, 8 then 'L' + 'X' * (decenas - 5)
    when 9 then 'XC'
    end
  end

  def u(unidades)
    case unidades
    when 1, 2, 3 then 'I' * unidades
    when 4 then 'IV'
    when 5 then 'V'
    when 6, 7, 8 then 'V' + 'I' * (unidades - 5)
    when 9 then 'IX'
    end
  end
end
