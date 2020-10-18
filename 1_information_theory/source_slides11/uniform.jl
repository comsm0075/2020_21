

g(x)=1/(1+exp(-x))
gp(x)=exp(-x)/(1+exp(-x))^2

x(g)=-log(1/g-1)

pg(g,px)=px/gp(x(g))

function plot(a,px)

    for g_val in range(0,stop=g(-a/2),length=100)
        println(g_val," ",0.0)
    end
    for g_val in range(g(-a/2),stop=g(a/2),length=100)
        println(g_val," ",pg(g_val,px))
    end
    for g_val in range(g(a/2),stop=1,length=100)
        println(g_val," ",0.0)
    end

end

function h(a,px)
    h=0
    delta=(g(a/2)-g(-a/2))/100
    
    for g_val in range(g(-a/2),stop=g(a/2),length=100)
        p=pg(g_val,px)
        h-=p*log(p)*delta
    end
    h
end

a=10.0
px=1.0/a

println(a," ",h(a,px))
    
