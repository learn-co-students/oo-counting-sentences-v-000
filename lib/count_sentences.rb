require 'pry'

class String

  def sentence?
    if self.include?('.') then true else false
  end
end

  def question?
    if self.include?('?') then true else false
    end
  end

  def exclamation?
    if self.include?('!') then true else false
    end
  end

  def count_sentences
    self.squeeze('.!?').count('.!?')
  end
end