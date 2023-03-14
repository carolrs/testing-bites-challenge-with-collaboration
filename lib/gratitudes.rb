class Gratitudes
  def initialize
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes.push(gratitude)
  end

  def format
    @gratitudes.each do |i| 
      if i.is_a? Integer
        return"Please type a string"
      end
    end
    if @gratitudes.empty?
      return "Error, try add something to gratitudes"
    end

    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
    return formatted
  end
end