export arraysum, mul35sum

function arraysum(ar::AbstractVector{<:Number})::Float64
    sum=0; 
    for i in ar
            sum=sum+i;
    end
    return sum;
end


function mul35sum(N::Integer)::Int64
    v=Vector{Float64}()
    for i in 1:(N-1) 
        if i%3==0
            push!(v,Float64(i))
        elseif i%5==0
            push!(v,Float64(i))   
        end
    end
    sum = arraysum(v);
end