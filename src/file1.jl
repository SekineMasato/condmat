function myiseven(x::Int)
    return x % 2 == 0    
end

#@assert myiseven(1) == false
#@assert myiseven(2) == true

function bisect(f, a::Float64, b::Float64, tol::Float64)
    if f(a) * f(b) > 0 
        error("f(a) and f(b) must have opposite signs")
    end
    # Fill!
    mid = 0.5*(a+b)
    
    while abs(f(mid)) >= tol
        mid = 0.5*(a+b)
         
        if f(mid) > 0
           b = mid
           #bisect(f, a::Float64, b::Float64, tol::Float64)  
        else
           a = mid 
           #bisect(f, a::Float64, b::Float64, tol::Float64)  
        end    
    end


    return mid

end