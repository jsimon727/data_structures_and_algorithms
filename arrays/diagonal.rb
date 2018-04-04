require 'pry'
class Matrix
  def initialize(array_of_arrays)
    @matrix = Array.new(array_of_arrays)
    @return_values = []
  end

  def insert_values_above(num, array_index)
    values = []
    values << num unless num.nil?
    counter = array_index - 1
    num_index = 0
    array_index.times do
      number =  @matrix[counter][num_index + 1]
      values << number unless number.nil?
      counter = counter - 1
      num_index = num_index + 1
    end
    @return_values << values
  end

  def get_diagonal
    ## [
    ## [1,2,3],
    ## [4,5,6]
    #]
    @matrix.each do |array|
      ## [1,2,3]

      array_index = @matrix.index(array)

      if array_index == @matrix.length - 1
        array.each_with_index do |num, index|
          values = []
          values << num
          counter = array_index - 1
          num_index = 0
          array_index.times do
            number = @matrix[counter][num_index + index + 1]
            values << number unless number.nil?
            counter = counter - 1
            num_index = num_index + 1
          end
          @return_values << values
        end
      else
        insert_values_above(array.first, array_index)
      end
    end

    @return_values
  end
end

matrix = Matrix.new(
  [
    [1,5],
    [7,7],
    [5,8],
  ]
)
#matrix = Matrix.new(
  #[
    #[],
    #[],
  #]
#)
puts matrix.get_diagonal.inspect
