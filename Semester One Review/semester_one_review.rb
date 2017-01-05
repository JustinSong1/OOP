#Name: Justin Song
#Period: 6


#Methods 1 and 2
#Description: You will write two identical methods using different techniques. Both methods
#             will require iteration. For the first method use a .each loop. For the second
#             method, use a while loop. These methods take an array of names and count how long
#             each name is. They then sort the names into three categories: three or less
#             letters, four to seven letters, and eight or more letters. Return a hash containing
#             the number of short, medium, and long names. (See spec for an example).
#Arguments: Array of names (strings)
#Return: Hash
#        Keys: (strings) short, medium, long
#        Values: Integers

def word_sorter_each(names)
  hash = {"short" => 0, "medium" => 0, "long" => 0}
  names.each do |name|
    if name.length <= 3
      hash["short"] += 1
    elsif name.length <= 7
      hash["medium"] += 1
    else
      hash["long"] += 1
    end
  end
  return hash
end


def word_sorter_while(names)
    hash = {"short" => 0, "medium" => 0, "long" => 0}
    index = 0
    while index < names.length
      if names[index].length <= 3
        hash["short"] += 1
      elsif names[index].length <= 7
        hash["medium"] += 1
      else
        hash["long"] += 1
      end
      index += 1
    end
    return hash
end


#Methods 3 and 4
#Description: You will again write two methods that do the same thing. 
#             These methods take a test score. For the control flow of the first method,
#             use if statements. For the second, use a case statement (look up how to use 
#             a case statement if you forget). The goal of this method is to turn
#             a test score (as a percent) into a letter grade. Scores from 90-100 are an A,
#             80-89 are a B, 70-79 are a C, etc.
#Arguments: Test score (Integer)
#Return: Letter grade (String)

def score_converter_while(score)
    if (score).between?(90, 100)
      return "A"
    elsif (score).between?(80, 89)
      return "B"
    elsif (score).between?(70, 79)
      return "C"
    elsif (score).between?(60, 69)
      return "D"
    else
      return "F"
    end
end

def score_converter_case(score)
  case score
  when (90..100)
    return "A"
  when (80..89)
    return "B"
  when (70..79)
    return "C"
  when (60..69)
    return "D"
  else
    return "F"
  end
end






