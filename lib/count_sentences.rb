require 'pry'

# String Class
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
    self.split(/[?.!]/).reject(&:empty?).size
  end
end
