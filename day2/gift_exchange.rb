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
  
end













# display