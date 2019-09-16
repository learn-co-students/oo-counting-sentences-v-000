require 'pry'

class String

  def sentence?
        if self.match(/[^\.][\.]/)
             true
      else
            false
      end
  end


  def question?
        if self.match(/[^\?][\?]/)
            true
     else
          false
     end
  end

  def exclamation?
        if self.match(/[^\!][\!]/)
             true
        else
             false
      end
  end

  def count_sentences

       var = self.scan(/[^\.][\.]|[^\?][\?]|[^\!][\!]/)

       var.length
  end


end
