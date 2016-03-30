require 'pry'

class String

  def sentence?

  if self.end_with?(".") == true
    true
  else
    false

    end  
  end

  def question?
    if self.end_with?("?") == true
    true
  else
    false

    end 
  end

  def exclamation?
    if self.end_with?("!") == true
    true
  else
    false

    end 
  end


def count_sentences

sentence_array = self.split(/\.|\?|\!/)
final_sentence_count = sentence_array.delete_if {|x| x == ""}
final_sentence_count.count


end
end
