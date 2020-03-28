class MyComplex
    attr_reader :imaginary
    attr_reader :real

    def initialize(real,imaginary)
        @real=real
        @imaginary=imaginary
    end
     
    def to_s
        if @imaginary>0
            if @real!=0
                "#{@real}+i*#{@imaginary.abs}"
            else 
                "i*#{@imaginary.abs}"
            end
        end
        if @imaginary<0
            if @real!=0
                "#{@real}-i*#{@imaginary.abs}"
            else
                "-i*#{@imaginary.abs}"
            end
        end
        if @imaginary==0
            "#{@real}"
        end
    end

    def add(other)
        MyComplex.new(
            @real+ other.real,
            @imaginary +other.imaginary
        )
    end
end