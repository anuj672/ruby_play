class Book
    attr_reader :title, :price 
    attr_writer :title, :price
    def initialize(title=nil,price=nil)
        if title.nil? || title.empty?
            raise ArgumentError.new("Invalid string")
        end
        if price.nil? || price<0
            raise ArgumentError.new("Invalid price")  
        end
        @title=title
        @price=price
    end

    def formatted_price
        if @price.integer?
            return "#{@price} dollars"
        else
            conv = @price.to_s.split('.')
            int_part = conv.first.to_i
            dec_part = conv.last.to_i
            if int_part == 0 
                return "#{dec_part} cents"
            end
            return "#{int_part} dollars and #{dec_part} cents"
        end
    end

end


object = Book.new(' ',10.05)
puts object.formatted_price


