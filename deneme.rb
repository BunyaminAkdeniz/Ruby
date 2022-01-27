class Okul
  attr_reader :okulad, :okulid

  def initialize okulad, okulid

      @okulad, @okulid  =  okulad, okulid

  end

end

omu = Okul.new "OMU" , 55


puts omu.okulid