module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    meets_condition = []

    list.each do |element|
      meets_condition.push(element) if yield element
    end
    meets_condition.length == list.length
  end

  def any?
    one_condtion_met = false
    list.each do |element|
      if yield element
        one_condtion_met = true
        break
      end
    end
    one_condtion_met
  end

  def filter
    meets_condition = []

    list.each do |element|
      meets_condition.push(element) if yield element
    end
    meets_condition
  end
end
