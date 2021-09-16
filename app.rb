def substrings(string, dictionary)
  arr = []

  dictionary.each do |str|
    if string.downcase.include? str
      arr.push(string.downcase.scan(str))
    end
  end
  
  # bad practice using destructive method
  arr.each do |item|
    item.push(item.count)
    item.uniq!
  end
  p arr.to_h
end

dictionary = ["below", "be", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("DOWNTOWN Google hoWdy goose!", dictionary)