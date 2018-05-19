module BookKeeping
  VERSION = 3
end
# Clase raindrops Gotas De LLuvia
class Raindrops
  def self.convert(num)
    sound = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong', :not => '' }
    (1..num).each do |i|
      next unless (num % i).zero?
      case i
      when 3, 5, 7
        sound[:not] << sound[i]
      end
    end
    return num.to_s if sound[:not].empty?
    sound[:not]
  end
end
