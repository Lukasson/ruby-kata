module GiftExchange
  # Just a sample list of members for your gift exchange. Feel free to change/ignore.
  #
  # Returns an Array of member names.
  def self.sample_members
    ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
  end

  # Assign members to each other.
  #
  # members - Array containing member names.
  #
  # Examples
  #
  #   assign_gift_givers(sample_members)
  #   # => {"Sumeet Jain" => "Prisha Gupta", "Beth Haubert" => "Sachin Jain", "Sachin Jain" => "Richa Goyal", "Suneel Jain" => "Arjun Goyal", "Prisha Gupta" => "Beth Haubert", ...etc }
  #
  # Returns a Hash with each member's name as a key and the person to whom they
  # should give a gift as the value. 
  # IT MAY PRODUCE A PAIR WHERE THE HASH KEY EQUALS HASH VALUE.
  def self.assign_gift_givers(members)
    givers=members.shuffle
    receivers=members.shuffle
    party_hash={}
    members.length.times do |recipient|
      party_hash[givers.pop]=receivers.pop
    end
    party_hash
  end
  
  # Extracts last name from a String
  #
  # Examples
  #
  #   get_last_name("Sumeet Jain")
  #   => "Jain"
  #
  # Returns a String of the last word in a String
  def self.get_last_name(name)
    name.split(" ").last
  end
  
  # Determines whether hash key-value pair contains same last names
  #
  # Example
  #
  #  detect_bias?({"Sumeet Jain" => "Suneel Jain"})
  # =>  true
  # detect_bias?({"Beth Haubert" => "Sumeet Jain"})
  # => false
  #
  # Returns Boolean value
  def self.detect_bias?(hash)
    hash.each_pair do |k,v|
      # print get_last_name(k)
      # print ", "
      # print get_last_name(v)
      # print "; \n"
      if get_last_name(k) == get_last_name(v)
        return true
      end
    end
    false
  end
  
  def self.find_no_matches(members)
    valid_pairs=false
    until valid_pairs do
      pairs=assign_gift_givers(members)
      bias=detect_bias?(pairs)
      valid_pairs=!bias
    end
    pairs
  end
    
end













# display