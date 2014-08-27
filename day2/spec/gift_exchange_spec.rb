require "spec_helper"

describe GiftExchange do
  it "should return the word from a String" do
    expect(GiftExchange.get_last_name("Jason Laux")).to eq("Laux")
  end
  
  it "should return the word from a String" do
    expect(GiftExchange.get_last_name("Laux")).to eq("Laux")
  end
  
  it "should produce a hash" do
    members=["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
    expect(GiftExchange.assign_gift_givers(members).class).to eq({}.class)
  end
  
  it "should produce a hash with equal length to members array" do
    members=["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
    expect(GiftExchange.assign_gift_givers(members).length).to eq(members.length)
  end
  
  it "detect when self.assign_gift_givers(members) assigns key-value pair with same last names" do
    pairings={"Richa Goyal"=>"Judy Haubert",
      "Judy Haubert"=>"Suneel Jain",
      "Sumeet Jain"=>"Arjun Goyal",
      "Beth Haubert"=>"Sumeet Jain",
      "Suneel Jain"=>"Beth Haubert",
      "Arjun Goyal"=>"Richa Goyal",           # This is an invalid match
      "Sachin Jain"=>"Prisha Gupta",
      "Prisha Gupta"=>"Sachin Jain"}
      expect(GiftExchange.detect_bias?(pairings)).to eq(true)
    end
    
    it "should produce a valid hash of giver-recipient pairings where last names of pair do not match" do
      members=["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
      pairings=GiftExchange.find_no_matches(members)
      expect(GiftExchange.detect_bias?(pairings)).to eq(false)
    end
end