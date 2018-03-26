#def minimum(list)
##list.sort.first
#return -1 if list.length < 1
#num = list.first
#for i in list
#if i < num
#num = i
#end
#end

#num
#end


#puts minimum([1,2,3,4,5,8,9])
#puts minimum([3,1,2,3,4,5,8,9])
#puts minimum([3,0, 9, 4, 1,2,3,4,5,8,9])
#puts minimum([])

require 'pry'
def pairs(list, target)
  nums = []
  return [] if list.length <= 1
  list.each_with_index do |num1, i1|
    list[1..-1].each_with_index do |num2, i2|
      if (num1 + num2 == target) && i1 != i2 + 1
        nums << [num1, num2]
      end
    end
  end
  nums
end

#puts pairs([-7,2,3,5,1,0,-2,-1], 10) #return []
#puts pairs([5], 10) #return []
#puts pairs([5,5], 10).inspect #return 5,5
#puts pairs([-5,5,5], 0).inspect #return -5,5, -5,5
#puts pairs([-7, 7, 2,3,5,1,0,-2,-1])
#puts pairs([]).inspect


