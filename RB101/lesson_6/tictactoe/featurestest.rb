require 'pry-byebug'

#IMPROVE JOIN

# arr = [1, 2, 3, 4, 5]
# # arr = [1, 2]


# # def joinor(brd)
# #   if brd.length == 1
# #     puts brd
# #   else
# #     brd.insert(-2, "or").join(", ")
# #   end
# # end

# #  puts joinor(arr)


#  def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first.to_s
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
#  end

#  joinor(arr)

#KEEP SCORE
scoreboard = {"Player" => 0, "Computer" => 0}
case detect_winner()
  scoreboard["Player"] += 1
  break if scoreboard["Player"] == 5
end