using Plots

global x0=0.1  #initial value between 0 and 1
f(x,μ)=μ*x*(1-x)  #logistic map
#f(x,μ)=μ*x*(1-x)^(exp(x*sin(x)))  #another example
#f(x,μ)=-μ*sin(x)  #another example

firstParam=0.1  #first paramater
lastParam=4  #last paramater
numParams = 2000  #number of paramaters to graph
iter=2000  #number of iterations from initial value to get to attracting points
iterKeep=500  #number of iterations to graph

params=range(firstParam, lastParam, length=numParams)  #paramaters

values=zeros(numParams)  #initialize vector that will contain the iterations from initial point
for n in 1:numParams
    x=x0
    μ=params[n]  #nth paramater
    for m in 1:iter
        x=f(x,μ)  #iterate an iter amount of times
    end
    values[n]=x  #store iterated value in "values"
end

orbit=zeros(numParams, iterKeep)  #initialize matrix which will contain attracting points
for n in 1:numParams
    x=values[n]
    orbit[n,1]=x  #set first point to f^[0](x)=x
    μ=params[n]
    for m in 2:iterKeep  #set mth point to be f^[m-1](x)
        x=f(x,μ)
        orbit[n,m]=x  #store value
    end
end

scatter(params, orbit, markersize=0.01, legend=false, color=false, title="Bifurcation Diagram", xlabel="Parameters", ylabel="Attractors")
#plot points, set graphical size of points to 0.01 pixels, remove legend, make the graph color black, and label the graph.
