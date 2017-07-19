module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    return "" if dna =~ /[^ACGT]/
    dna.tr("ACGT", "UGCA")
  end
end
