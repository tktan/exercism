class Bob
  def hey(remark)
    if remark =~ /^\s*$/m && remark !~ /\S/
      "Fine. Be that way!"
    elsif remark == remark.upcase && remark != remark.downcase
      "Whoa, chill out!"
    elsif remark.strip[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end
