module BookKeeping
  VERSION = 6
end
# Clase Pamgram, Determina si una oracion es un pangrama.
class Pangram
  def self.pangram?(phrase)
    ('a'..'z').to_a.eql?(phrase.downcase.scan(/[a-z]/).uniq.sort!)
  end
end
