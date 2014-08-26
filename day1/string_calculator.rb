module StringCalculator
  
  def self.add(string)
    if string.length==0
      0
    elsif string.length==1
      string.to_i
    elsif string.include? ","
      sum=0
      string.split(", ").each do |elmt|
        sum += elmt.to_i
      end
      sum
    elsif string.include? "\n"
      sum=0
      string.split("\n").each do |elmt|
        sum += elmt.to_i
      end
      sum
    end
    
  end
end