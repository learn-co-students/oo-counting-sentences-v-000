require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
      self.end_with?("?")
  end

  def exclamation?
      self.end_with?("!")
  end

  def count_sentences
      self.split(/\?+|\.+|!+/).count  #regex that captures all strings that end in
                                      # 1 or more occurrances of ".","!","?" 

  end
end
