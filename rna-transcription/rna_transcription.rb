module BookKeeping
  VERSION = 4
end
# Clase Transcripcion de RNA
class Complement
  def self.of_dna(nucleotide)
    transc = ''
    nucle = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    nucleotide.each_char do |n|
      case n
      when 'G', 'C', 'T', 'A' then transc << nucle[n].to_s
      else return transc = ''
      end
    end
    transc
  end
end
