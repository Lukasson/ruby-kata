module StringCalculator
  
  def self.add(string)
    if string.length==0
      0
    elsif string.length==1
      s=string.to_i
      if s < 0
        return "Negatives not allowed."
      else
        s
      end
    elsif string.include? ","
      sum=0
      string.split(", ").each do |elmt|
        num=elmt.to_i
        if num < 0
          return "Negatives not allowed."
        else
          sum += num
        end
      end
      sum
    elsif string.include? "\n"
      sum=0
      string.split("\n").each do |elmt|
        num=elmt.to_i
        if num < 0
          return "Negatives not allowed."
        else
          sum += num
        end
      end
      sum
    end
  end
  
  def strings_to_numbers(string_array)
    num_array=[]
    string_array.each do |string|
      num_array << string.to_i
    end
    num_array
  end
  
  def self.no_negative_values(value)
    raise ArgumentError, "Negatives not allowed." if value < 0
    value==value
  end
    
end
