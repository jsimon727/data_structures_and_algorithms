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

## TODO: three numbers that sum up to target
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

#def triplets(list, target)
  #nums = []
  #return [] if list.length <= 1

  #list1 = list
  #list2 = list[1..-1]
  #list3 = list[2..-1]

  #binding.pry

  #nums
#end
def triplets(list, target)
  nums = {}
  return [] if list.length <= 1



  list.each_with_index do |num1, i1|
  end
end


#def triplets(list, target)
  #nums = []
  #return [] if list.length <= 1



  #list.each_with_index do |num1, i1|
    #list[1..-1].each_with_index do |num2, i2|
      #list[2..-1].each_with_index do |num3, i3|
        #if (num1 + num2 + num3 == target) && !same_index?(i1, i2 + 1, i3 + 2)
          #nums << [num1, num2, num3]
        #end
      #end
    #end
  #end
  #nums
#end

def same_index?(i1, i2, i3)
  i1 == i2 && i2 == i3
  #[i1,i2,i3].uniq.length == 1
end

#puts pairs([-7,2,3,5,1,0,-2,-1], 10) #return []
#puts pairs([5], 10) #return []
#puts pairs([5,5], 10).inspect #return 5,5
#puts pairs([-5,5,5], 0).inspect #return -5,5, -5,5
#puts pairs([-7, 7, 2,3,5,1,0,-2,-1])
puts pairs([0], 0).inspect
puts triplets([0], 0).inspect
puts triplets([-1, 1, 0, 1], 0).inspect # return -1,1,0
puts triplets([-1, 1, 0, 1,-2,2], 0).inspect # return -1,1,0


