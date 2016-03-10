module ApplicationHelper

  def userimage_for(user)
    image_tag("#{user.userimage}", alt: "no_image")
  end

   def get_season

    time = Time.new
    if(time.month >= 1) && (time.month <= 3)
      "Summer"
    elsif(time.month >= 3) && (time.month <= 5)
      "Autumn"
    elsif(time.month > 5) && (time.month <= 8)
      "Winter"
    elsif(time.month > 8) && (time.month <= 12)
      "Spring"
    end
  end

  def get_random_number(max_value = 10)
    a = rand(max_value)
    "number: " + a.to_s
  end

  def get_random_hello
    opening = ["What a beautiful day",
               "Welcome to our site",
               "You look great today"]
    middle = ["We hope you find what you need",
              "Check out our specials",
              "Isn't it remarkable!"]
    ending = ["Don't be a stranger",
              "Thanks for dropping by",
              "Hope to see you again"]
    "#{opening[rand(3)]}. #{middle[rand(3)]}. #{ending[rand(3)]}."
  end

   def count_to_10
     x=2
     number_list = "1"
     loop do
       number_list = number_list + ", " + x.to_s
       x += 1
       break if x > 10
     end
     "#{number_list}"
   end

end
