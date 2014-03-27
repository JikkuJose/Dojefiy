require 'dojefiy'

class Array

  def dojefiy
    self.map do |element|
      element.to_s.dojefiy
    end
  end

end
