# module MyEnumerable
#   def list
#     @list ||= []
#   end
#
#   # check if all conditions are met
#   def all?
#     meets_condition = []
#
#     list.each do |element|
#       meets_condition.push(element) if yield element
#     end
#     meets_condition.length == list.length
#   end
#
#   # check if any single condition is met
#   def any?
#     one_condtion_met = false
#     list.each do |element|
#       if yield element
#         one_condtion_met = true
#         break
#       end
#     end
#     one_condtion_met
#   end
#
#   # filter items pe the provided condtion
#   def filter
#     meets_condition = []
#
#     list.each do |element|
#       meets_condition.push(element) if yield element
#     end
#     meets_condition
#   end
# end
