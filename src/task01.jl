export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    num=a;
    v = [];
    while (num/10) > 0
        push!(v,num%10);
        num = num÷10;
    end
    return v[end:-1:1];
end

function touppercase(str_)
    s=""
    for i in str_
        if 'a'<=i<='z'
            l=Char(Int(i)-32)
            s=s*l
        else
            s=s*i
        end
    end
    return s;
end

function firstnorm(vec_::AbstractVector{<:Number})
    norm=0
    for i in vec_ 
         norm=norm+abs(i)
    end
    return norm;
end

function secondnorm(vec_::AbstractVector{<:Number})
    norm=0
    for i in vec_ 
         norm=norm+i^2
    end
    return sqrt(norm);
end

function infnorm(vec_::AbstractVector{<:Number})
    norm=0
    for i in vec_
        if i>norm
            norm=i
        end
    end
    return norm;
end

function firstnorm(vec_::AbstractMatrix{<:Number})
    rows, cols = size(vec_)
    max=0
    for j in 1:cols
        s=0
        for i in 1:rows
            s=s+vec_[i,j]
        end
        if s>max
            max=s
        end
    end
    return max;
end

function infnorm(vec_::AbstractMatrix{<:Number})
    max=0
    rows, cols = size(vec_)
    for i in 1:rows
        s=0
        for j in 1:cols
            s=s+vec_[i,j]
        end
        if s>max
            max=s
        end
    end
    return max;
end

function isleap(year)
    if year%400 == 0
        return true
    elseif year%100 == 0
        return false
    elseif year%4 == 0
        return true
    else return false
   end
end

function chesscolor(cell1,cell2)
    x=Int(cell1[1])
    y=Int(cell2[1])
    if (cell1[2]+x)%2 == (cell2[2]+y)%2 == 0 
        return true;
    elseif (cell1[2]+x)%2 == (cell2[2]+y)%2 == 1
        return true;
    else return false;
    end
end