class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
          @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def clear
        @hash.clear
        self
    end

    def each(enumerable = [])
        enumerable.each do |value|
          self[value] = true
        end
        puts self
    end

    def inspect
        @hash.inspect
        print self
    end
end

set = MySet.new([1, 2, 3, 3])

