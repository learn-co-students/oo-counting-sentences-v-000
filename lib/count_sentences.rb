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
    array_of_sentences = self.split(/[.!?]/)
    array_of_sentences.delete_if {|empty_string| empty_string == ""}
    return array_of_sentences.length
    #I create a variabel array_of_sentences to hold the array I make from the strings
    #I use Regex to scan the string for only .!?
    #This returns an array with five sentences. One is an empty string ""
    #I remove the empty string with .delete_if. It iterates through the array to find the empty string
    #The method return the length of the array.
  end
end
