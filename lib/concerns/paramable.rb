module Paramable
  def to_param
  #  binding.pry
    self.name.downcase.gsub(' ', '-')

  end

end
