require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentences = 0
    placeholder_array = self.split(' ')
    placeholder_array.each do |word|
      if word.end_with?('!') || word.end_with?('.') || word.end_with?('?')
        sentences += 1
      end
    end
    sentences
  end
end

input = "one. two. three?"
input.count_sentences