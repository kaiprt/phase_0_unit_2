# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution
def bakery_num(guests, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # key is "available food", value is "amount food serves"
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  has_fave = false

  my_list.each_key do |k|
    if k == fav_food
        has_fave = true
        fav_food = k
        fav_food_qty = my_list.values_at(fav_food)[0]
          if guests % fav_food_qty == 0
            num_of_food = guests / fav_food_qty
            return "You need to make #{num_of_food} #{fav_food}(s)."
          else guests % fav_food_qty != 0
            until guests == 0
              if guests / my_list["pie"] > 0
                pie_qty = guests / my_list["pie"]
                guests = guests % my_list["pie"]
              elsif guests / my_list["cake"] > 0
                cake_qty = guests / my_list["cake"]
                guests = guests % my_list["cake"]
              else
                cookie_qty = guests
                guests = 0
              end
            end
            return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
          end
    else has_fave == false
      raise ArgumentError.new("You can't make that food")
    end
  end
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 



