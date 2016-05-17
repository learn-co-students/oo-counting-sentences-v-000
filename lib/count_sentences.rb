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
    sent_count = 0
    self.split("!?.")

    self.each_with_index do |x, i|
      if x == ""
        self.delete_at(i)
      else sent_count += 1
      end
    end
    sent_count
  end
end
