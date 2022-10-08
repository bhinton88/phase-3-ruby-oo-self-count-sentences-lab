require 'pry'

class String

  def sentence?
    if self.end_with?(".") then true
    else false
    end
  end

  def question?
    if self.end_with?("?") then true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!") then true
    else false
    end 
  end

  def count_sentences
    sentence_split = self.split(/[!.?]/)
    sentence_split.reject { |c| c.empty? }.size
  end
end

# what does a sentence end with? a period, exclamation, or a question mark

# as such, we should remove all other punctuation
# then split the string based 