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
    @count = 0
    if self.question?
      @count += 1
    end

    if self.sentence?
      @count += 1
    end

    if self.exclamation?
      @count += 1
    end

    @count += self.split(".").compact.size - 1
    @count += self.split("?").compact.size - 1
    @count += self.split("!!").compact.size - 1
    if @count < 0
      @count = 0
    end
    return @count
  end
end
