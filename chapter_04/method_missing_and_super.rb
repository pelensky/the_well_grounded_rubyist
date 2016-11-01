class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_")
      #return the appropriate grade, based on parsing the method name
    else
      super
    end
  end
end
