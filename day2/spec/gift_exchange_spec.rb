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
  
  
end