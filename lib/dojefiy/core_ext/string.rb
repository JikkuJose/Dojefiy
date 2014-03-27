require 'dojefiy'

class String

  def dojefiy
    Dojefiy.new.process(self)
  end

end
