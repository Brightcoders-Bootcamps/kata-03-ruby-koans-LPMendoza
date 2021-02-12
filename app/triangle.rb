# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  get_type(a, b , c)
end

def get_type(a, b, c)
  valid?(a, b, c)
  size = [a, b, c].uniq.size 
  if size == 1
    return :equilateral
  elsif size == 2
    return :isosceles
  else
    return :scalene
  end
end

def valid?(a, b, c)
  sides_invalid = false
  sides_invalid = true if(a + b <= c) || (c + a <= b) || (b + c <= a)
  sides_ivalid = true if (a * b).negative? || (c * b).negative?

  raise TriangleError.new("Sides are invalid") if sides_invalid
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
