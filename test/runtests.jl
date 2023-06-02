import My:myiseven
import My:bisect
using Test

@testset "myiseven" begin
    @test myiseven(2)
    @test !myiseven(3)

end    

@testset "myiseven2" begin
    @test myiseven(2)
    @test !myiseven(3)
end

@testset "bisect" begin
    @testset "bisect" for i in [
        (x->x^2-2.0,0.0,2.0, 1e-10, sqrt(2))
    ]
    f = i[1]
    @test bisect(f,i[2],i[3],i[4]) ≈ i[5] 
    end 
end

#テストするときは 1.activate(package mode) . 2.using Revise 3.using My 4. include("test/runtests.jl")
#4.package mode で