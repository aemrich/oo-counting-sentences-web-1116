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
    array = self.split(" ")
    counter = 0
    array.each do |string|
      if string.sentence?
        counter += 1
      elsif string.question?
        counter+=1
      elsif string.exclamation?
        counter+=1
      else
        nil
      end
    end
    counter
  end
end
