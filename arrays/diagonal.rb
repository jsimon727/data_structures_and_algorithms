class Matrix
  def initialize(array_of_arrays)
    @matrix = Array.new(array_of_arrays)
    @return_values = []
  end


  def get_diagonal
    first_num = @matrix[0][0]
    return first_num if @matrix.length == 1

    @return_values << first_num


    previous_array = @matrix.first

    ## [
    ## [1,2,3],
    ## [4,5,6]
    #]
    @matrix.each do |array|
      ## [1,2,3]

      array_index = @matrix.index(array)

      next if array_index == 0
      previous_array = @matrix[array_index - 1]

      ##TODO need to account for [5,8,3] instead of current [5,8]
      #if (array_index == @matrix.length - 1) &&
      array.each do |num|
        num_index = array.index(num)
        @return_values << [num, previous_array[num_index + 1]]
      end
    end

    @return_values
  end
end

matrix = Matrix.new(
  [
    [1,2,3,4],
    [7,8,9,4],
    [5,6,8,4],
  ]
)
puts matrix.get_diagonal

