class Araba
  # INSTANCE DEĞİŞKENİ 
  def initialize(degisken)
    @marka = "Mercedes"
    @model = "CLS" 
    @uretim_yili = "2017"
    @renk = "Siyah"
    @degisken = degisken
  end

  def ozellikleri_yazdir
    puts "Arabanın markası #{@marka} modeli #{@model}'dir"
  end
  # GETTER METODU OLUŞTURMA
  def marka
    @marka
  end
  # GETTER METODU DOĞRUSU
  attr_reader :model, :degisken
  # SETTER METODU
  def renk=(renk)
    @renk = renk
  end
  # SETTER METODU DOĞRUSU
  attr_writer
  # SELF METODU
  def objem_hangi_class 
    puts "Bu oje #{self.class} class'ına ait"
  end
  # PRIVATE METOD OLUŞTURMA
  private # => Altına yazdıkların private olur. Initialize metodları default private gelir.
  def rand_sayi_oluştur
    rand(1..100)
  end
  def metod
    p "a"
  end
end
binek_arac = Araba.new("degisken")
p binek_arac.ozellikleri_yazdir
p binek_arac.model
binek_arac.renk=('sarı')
p binek_arac.objem_hangi_class
p binek_arac.metod