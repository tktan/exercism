class Bob
  def hey remark
    return "Fine. Be that way!" if remark =~ /^\s*$/m && remark !~ /\S/
    return "Whoa, chill out!" if remark == remark.upcase && remark != remark.downcase
    return "Sure." if remark.strip[-1] == "?"
    "Whatever."
  end
end
