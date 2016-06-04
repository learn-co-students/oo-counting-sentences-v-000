require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    counter = 0
    sentences=self.scan(/[?!.](\s|$)/)
      sentences.each do |is_it|
      puts counter
      counter += 1
      end
      counter
    end
  end
