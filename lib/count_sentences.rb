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
    arr = self.split
    count = 0
    punc = %w(. ? !).freeze
    arr.each do |sent|
      if sent.end_with?(*punc)
        count += 1
      end
    end
    count
  end
end