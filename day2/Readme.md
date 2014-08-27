The GiftExchange module:

Requirements

1. Assigns each member a person to give a gift to.
2. Does not assign two people to each other if they have the same last name.
3. Ensures that everyone is assigned someone to give a gift to. (The rule of not assigning siblings to each other can potentially cause a situation where the only people left all have the same last name. So make sure to handle that somehow.)
4. Properly determines last name even if someone's middle name is provided. E.g. The last name of "Susan Brownell Anthony" is just "Anthony".

"spec/gift_exchange_spec.rb" gives a good indication of how the various methods work
But this is how it looks on pry, step three is the method:

day2 git:(master) ✗ pry
[1] pry(main)> require_relative "./gift_exchange.rb"
=> true
[2] pry(main)> m=["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
=> ["Sumeet Jain", "Beth Haubert", "Sachin Jain", "Suneel Jain", "Prisha Gupta", "Richa Goyal", "Arjun Goyal", "Judy Haubert"]
[3] pry(main)> GiftExchange.find_no_matches(m)
=> {"Richa Goyal"=>"Prisha Gupta",
 "Suneel Jain"=>"Beth Haubert",
 "Sumeet Jain"=>"Arjun Goyal",
 "Arjun Goyal"=>"Sumeet Jain",
 "Sachin Jain"=>"Judy Haubert",
 "Beth Haubert"=>"Richa Goyal",
 "Prisha Gupta"=>"Sachin Jain",
 "Judy Haubert"=>"Suneel Jain"}
[4] pry(main)> 
