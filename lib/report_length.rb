def report_length(str)
  if str.is_a? Integer
    return "Error"
  end
  length = str.length
  return "This string was #{length} characters long."
end