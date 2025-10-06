def trapped_water(heights)
  return 0 if heights.size < 3

  left = 0
  right = heights.size - 1
  left_max = 0
  right_max = 0
  water = 0

  while left < right
    if heights[left] < heights[right]
      left_max = [left_max, heights[left]].max
      water += left_max - heights[left]
      left += 1
    else
      right_max = [right_max, heights[right]].max
      water += right_max - heights[right]
      right -= 1
    end
  end

  water
end

if __FILE__ == $0
  require_relative 'test_helper'
  it "should calculate water for complex terrain", 13, trapped_water([0,1,3,0,1,2,0,4,2,0,3,0])
  it "should calculate water for uneven heights", 9, trapped_water([4,2,0,3,2,5])
  it "should calculate water for simple valley", 2, trapped_water([2,0,2])
  it "should calculate water for multiple valleys", 10, trapped_water([3,0,0,2,0,4])
  it "should return 0 for ascending heights", 0, trapped_water([1,2,3,4])
  it "should return 0 for descending heights", 0, trapped_water([4,3,2,1])
  it "should return 0 for flat terrain", 0, trapped_water([5,5,5,5])
  it "should return 0 for single element", 0, trapped_water([1])
  it "should return 0 for two elements", 0, trapped_water([1,2])
  it "should return 0 for empty array", 0, trapped_water([])
  it "should calculate water for smallest trap", 1, trapped_water([2,1,2])
  it "should calculate water for deep valley", 3, trapped_water([3,0,3])
  it "should calculate water for wide valley", 15, trapped_water([5,0,0,0,5])
  it "should calculate water for multiple peaks", 5, trapped_water([0,5,0,5,0])
  it "should calculate water for varying terrain", 14, trapped_water([5,1,0,2,1,0,1,3,2,1,2,1])
  it "should calculate water for tall walls", 10, trapped_water([10,0,10])
  it "should return 0 for single tall wall", 0, trapped_water([10])
end
