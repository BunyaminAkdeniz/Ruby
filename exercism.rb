
class SimpleCalculator
    def self.calculate num1, num2 , operation,
      return if(operation == "+")
        begin 
          num1+num2
        rescue
          raise ArgumentError.new("Raises an ArgumentError").message
        end
      elsif(operation == "*")
       begin 
          num*num2
        rescue
          raise ArgumentError.new("Raises an ArgumentError").message
        end
      elsif (operation == "/")
         begin 
          num/num2
        rescue => e 
          puts e.message
        end
      else 
         raise ArgumentError.new("Raises an UnsupportedOperation").message
      end
 
    end
  
  end