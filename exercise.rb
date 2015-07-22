

class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str_split = str.split(" ")

    str_split.each_with_index do |word,index|
      #modify only words with length > 4
      if word.length > 4

        #case when first char is upcase, return proper upcase
        if word[0] == word[0].upcase && ('a'..'z').include?(word[-1])
          str_split[index] = "Marklar"

        #case when first char is upcase followed by non-alphabet chars
        elsif word[0] == word[0].upcase && (('a'..'z').include?(word[-1])==false)
          str_split[index] = "Marklar#{word[-1]}"

        #case when first char is downcase followed by non-alphabet chars
        elsif ('a'..'z').include?(word[-1]) == false
          str_split[index] = "marklar#{word[-1]}"
        #case when word is downcased
        else str_split[index] = "marklar"
        end

      end #nested 'if' end

    end
    return str_split.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    counter = 0

  #creating fibonacci sequence that can be quickly accessed.
    fibo = Hash.new do |hash, key|
      if key < 2
        hash[key] = key
      else
        hash[key] = hash[key-1] + hash[key-2]
      end
    end

  #creating fibonacci hash up to nth
    fibo[nth]

  #adding fibonacci numbers to counter variable if it is even
    fibo.each do |x|
      counter+=x[1] if x[1].even?
    end
    counter
  end

end
