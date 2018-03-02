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
    @words = self.split(/[[\*?!.]$]/)
    @words.each do |x|
      if x == ""
        @words.delete(x)
      end
    end
    @words.length
  end
end
