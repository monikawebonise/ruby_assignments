puts "Enter the Sentence"
sentence=gets
modfySentnc=sentence.gsub(/\bMrs\b/,"Ms") # Also changing substrings
puts modfySentnc

