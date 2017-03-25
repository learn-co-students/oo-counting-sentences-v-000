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

  # Refactored #count_sentences method
  def count_sentences
    self.split(/\.\s|\?\s|\!\s/).count
  end
  
  # Old #count_sentences method
  def count_sentences
    a = self.split(/[.!?]/)
    a.reject! {|e| e.empty?}
    a.length
  end
end
