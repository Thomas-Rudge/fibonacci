# The iterative method. It could have beeen done in a single line using
# each_with_index, but I didn't like the idea of calling the item and index,
# and then only using the index. The intention is clearer with n.times
def fibs(n, list = Array.new(n, 1))
  n.times { |i| list[i] = list[i-1] + list[i-2] unless i < 2 }
  list
end
# The recursive method
def fibs_rec(n, list = Array.new)
  return list if n < 1
  list << (list.length < 2 ? 1 : list[-1] + list[-2])
  fibs_rec(n-1, list)
end
