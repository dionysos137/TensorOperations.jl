if VERSION < v"0.7.0-DEV.2005"
    const Test = Base.Test
end

# Until problems with .+ transforming ranges to arrays are settled
⊞(s::Int, r::StepRange{Int,Int}) = (first(r)+s):step(r):(last(r)+s)
⊞(s::Int, r::UnitRange{Int}) = (first(r)+s):(last(r)+s)

using Test
using TensorOperations

include("methods.jl")
include("tensor.jl")
include("tensoropt.jl")
