
function calculateProbs(probs::Vector{Float64},combinations)
    p=0
    for rolls in combinations
        thisP=1
        for roll in rolls 
            thisP*=probs[roll]
        end
        p+=thisP
    end
    p
end



probs=zeros(Float64,12)

for i in 1:12
    if i<=7
        probs[i]=(i-1)/36.0
    else
        probs[i]=(13-i)/36.0
    end
end

println(probs)

test=[[7,7],[7,5]]

println(.167*.167+.167*.111)
println(calculateProbs(probs,test))

toGet19=[[4,4],[8,10],[9,9],[10,8],[11,7],[12,6]]

toGet99=[push!(x,3) for x in toGet19]

println(calculateProbs(probs,toGet19))

conditionedOn15=[[4,3]]

println(calculateProbs(probs,conditionedOn15))


conditionedOn9=[[10,3]]

println(calculateProbs(probs,conditionedOn9))


conditionedOn13=[[6,3]]

println(calculateProbs(probs,conditionedOn13))



conditionedOn60=[[3]]

println(calculateProbs(probs,conditionedOn60))
