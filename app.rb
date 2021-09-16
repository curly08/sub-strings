def substrings(string, dictionary)
  matches = {}

  dictionary.each do |str|
    if string.downcase.include? str
      matches[str] = string.downcase.scan(str).length
    end
  end
  
  matches
end

dictionary = ["below", "be", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("DOWNTOWN Google hoWdy goose!", dictionary)