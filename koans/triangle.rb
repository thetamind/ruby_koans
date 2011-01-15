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
  uniq_lengths = [a, b, c].group_by {|i| i}.keys

  raise TriangleError if uniq_lengths.any? {|i| i <= 0}
  raise TriangleError unless (a + b > c) && (b + c > a) && (a + c > b)
 
  return type = case uniq_lengths.length
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
