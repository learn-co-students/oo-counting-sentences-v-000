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
    c=0
    count=0
  while (c <self.length)

    if (self[c]=="!")
         if (self[c+1]=="!")
         else
            count+=1
         end
       end

       if (self[c]==".")
            if (self[c+1]==".")
            else
               count+=1
            end
          end

          if (self[c]=="?")
               if (self[c+1]=="?")
               else
                  count+=1
               end
             end

     c+=1
   end
 count
end
end
