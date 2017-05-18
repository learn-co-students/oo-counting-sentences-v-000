require 'pry'

class String
  def sentence?
    match(/\u{002e}\z/) ? true : false
  end

  def question?
    match(/\u{003f}\z/) ? true : false
  end

  def exclamation?
    match(/\u{0021}\z/) ? true : false
  end

  def count_sentences
    scan(/\b[\u{002e}\u{003f}\u{0021}]+/).length
  end
end
