# bifurcation-grapher
Graphs the bifurcation diagram of maps with one parameter. That is, this program plots the attractors of a system $x_{n+1}=f(x_{n}, \mu)$ where $\mu$ is the parameter of this system.
It does this using the Julia Programming Language and the Julia Plots package. The program first creates a vector of parameter values ("params"; the length is dictated by the "numParams" variable). Then it takes an initial value (x0) and iterates it a set amount of times ("iter") for each paramater, and then stores those values in a new vector ("values"). The length of this vector is the same as the length of the parameter vector. Then it stores a set amount of iterations ("iterKeep") of the points in "values" in a matrix ("orbit") where each row is associated with one paramater and the next column is the next iteration. That is, if $\mu_{n}$ is the nth parameter, then $$\text{orbit}[n,m]=f^{m}\_{\mu_{n}}(x)$$

where $m$ ranges from 0 to iterKeep-1 and $n$ ranges from 1 to numParams. $f^{m}$ denotes the $m$th iteration of the function $f$ on $x$. The size of this matrix is numParams by iterKeep.
