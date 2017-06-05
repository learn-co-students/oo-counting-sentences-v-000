require 'pry'

class String

  def sentence?
    if self.match(/.+[.]$/) == nil
      false
    else
      true
    end
  end

  def question?
   if self.match(/.+[?]$/) == nil
     false
   else
     true
   end

  end

  def exclamation?
     if self.match(/.+[!]$/) == nil
       false
     else
       true
     end
  end

  def count_sentences
    test = 0
if self.match(/.+[.?!]/) == nil &&
   test +=0
 else
   test += 1
 end
 if self.match(/.+[.!?].+[.!?]/) == nil
   test += 0
 else
   test += 1
 end
 if self.match(/.+[.!?].+[.!?].+[.?!]/) == nil
   test += 0
 else
   test += 1
 end
 if self.match(/.+[.!?].+[.!?].+[.?!].+[.?!]/) == nil
   test += 0
 else
   test += 1
 end
 return test
end
end
