def fibs(n)
    result = []
    for i in 0...n
        p i
       if i < 2
            result << i
        else 
            result << result[-1] + result[-2]
        end 
    end
    result 
end 

def fibs_rec(n, result=[], last = true)
    #base cases: 
    # return n if n < 2
    if n < 2
        if result.length == n
            result << n 
        end 
        return n
    end 

    sum = fibs_rec(n-2, result, false) + fibs_rec(n-1, result, false)
    #push if n is equal the result length 
    result << sum if n == result.length
    if last == true 
        result 
    else
        sum 
    end 
end 

p fibs_rec(5)