module My

greet() = print("Hello World!")

function greet2()
    print("New function!")
end    

struct Mytype 
    x::Int
    y::Int
end

include("file1.jl")
end # module My
