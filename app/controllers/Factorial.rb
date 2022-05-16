class Factorial 

    
    def fact_cal(num)
        @f = 1
        for i in 1..num do
            @f = @f*i
        end
     return @f
    end
    
    def sum(x1,x2)
        if x1!= 0 || x2!=0
            return x1+x2
        end
    end
end