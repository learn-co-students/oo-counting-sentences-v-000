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
    elements = self.split(/[?!.]/)
    elements = elements.delete_if{|s| s == ''}
    elements.count
  end
end