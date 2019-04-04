# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  my_sentence = reverse_words(my_sentence)
  return string_reverse(my_sentence)
end

def reverse_words(my_words)
  return nil if my_words.nil?

  start_word = 0
  end_word = 0
  i = 0
  
  unless my_words == nil
    length = my_words.length
    while i < length
      while my_words[i] == " "
        i += 1
      end
      start_word = i

      while i < length && my_words[i] != " "
        i += 1
      end
      end_word = i - 1

      while end_word > start_word
        temp = my_words[start_word]
        my_words[start_word] = my_words[end_word]
        my_words[end_word] = temp
        start_word += 1
        end_word -= 1
      end

    end
  end

  return my_words
end


def string_reverse(my_string)
  return nil if my_string.nil?
  length = my_string.length
    i = 1
    while i <= length/2
      temp = my_string[i - 1]
      my_string[i - 1] = my_string[length - i]
      my_string[length - i] = temp
      i += 1
    end
    return my_string
end
