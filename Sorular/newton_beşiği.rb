class Point
  def initialize x, speed
      @x=x
      @speed = speed
  end

  def speed_incrade speed
      return speed + 1
  end

  def speed_dec speed
      return speed - 1
  end

  def every_so_many_seconds(seconds)
    last_tick = Time.now
    loop do
    sleep 0.05
        if Time.now - last_tick >= seconds
        last_tick += seconds
        yield 
        end
    end
  end

  
  def tiktak 
    a = Array.new(57){0}
    limit = 7
    every_so_many_seconds(0.01) do 
    a[@x] = 0 
    if @speed < limit
        @speed  = speed_incrade @speed
        @x += @speed 
        limit = 7
    else
    @x += @speed
    @speed  = speed_dec @speed
    limit = -7
    end 
    a[@x.to_i] = "XXXX"
    p a
    p a
    end
  end
end

x = Point.new 0,0
x.tiktak