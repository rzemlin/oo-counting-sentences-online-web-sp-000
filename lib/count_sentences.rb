require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = self.split(/[.!?]/).reject {|string| string.empty?}
    sentence_count.count
  end
end