require 'rest-client'

def every_so_many_seconds(seconds)
    site = RestClient.get("https://finanswebde.com/doviz/USD")
    last_tick = Time.now
    loop do
    sleep 0.05
        if Time.now - last_tick >= seconds
        last_tick += seconds
        puts site.body.match(/"full_name":"Amerikan Doları","latest":....../)
      
        end
    end
end

every_so_many_seconds(20)
