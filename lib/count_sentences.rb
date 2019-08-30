require 'pry'

class String
   def sentence?
      end_with?('.')
   end

   def question?
      end_with?('?')
   end

   def exclamation?
      end_with?('!')
   end

   def count_sentences
      strip.split(/\w[?!.]|[.]/).length
   end
end
