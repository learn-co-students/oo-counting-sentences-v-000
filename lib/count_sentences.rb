require 'pry'

class String

  def sentence?
    !!(self =~ /\.$/)    
  end

  def question?
    !!(self =~ /\?$/)
  end

  def exclamation?
    !!(self =~ /!/)
  end

  def count_sentences
    self.split(/\.+|!+|\?/).count
  end
end
