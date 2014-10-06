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

def is_valid(a, b, c)
	return a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a
end

def is_equilateral(a, b, c)
	return a == b && b == c
end

def is_isosceles(a, b, c)
	return a == b || a == c || b == c
end

def triangle(a, b, c)
  unless is_valid a, b, c
  	raise TriangleError
  end
  return :equilateral if is_equilateral a, b, c
  return :isosceles   if is_isosceles a, b, c
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
