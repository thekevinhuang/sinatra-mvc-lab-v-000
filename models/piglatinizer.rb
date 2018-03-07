class PigLatinizer

  VOWELS = ['a','e','i','o','u','A','E','I','O','U']

  def initialize

  end

  def piglatinize(word)
    word_chars = word.split('')
    if word_chars.length > 1
      while !VOWELS.include? word_chars.first
        word_chars.insert(word_chars.length-1,word_chars.shift)
      end
    end
    if word == word_chars.join
      pig_word = word_chars.join+"way"
    else
      pig_word = word_chars.join+"ay"
    end
    pig_word
  end

  def to_pig_latin(text)
    text_array = text.gsub(/[^a-zA-Z ]/, '').split(' ')
    flipped_array = text_array.collect do |word|
      self.piglatinize(word)
    end
    flipped_array.join(' ')
  end
end
