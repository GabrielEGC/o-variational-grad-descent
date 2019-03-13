# o-variational-grad-descent
This research looks for some way to generalize the classic gradient descent, but instead of applying it to function, we apply it to functionals (Optimal Control is basically minimize a Functional with restrictions).

We reduce the problem to partial differential equation with two times. One is the time of the system evolution, and the other is the "virtual time", a continous version of the iterations performed analogously to the iterations of classic gradient descent.

Talking to pure mathematical friends, they told me that that concept is actually "foliations", so its closer to pure maths than engineering.
However research can be improved by getting some fast ways to compute the solution of the partial differential equations with numerical analysis.

<p align="center">
<img src="graphics/1D-GFD.jpg">
</p>

In this figure we can see different curves for each iteration, clearly they are approaching to the optimal solution showed as a black line.
Each iteration is an step in the virtual time "tau". So we can have a plot of the curve vs iterations, or equivalently, curve vs virtual time, or even more, x(t,tau) vs (t,tau) as follows:

<p align="center">
<img src="graphics/xtttau.jpg">
</p>

We can see also that as tau goes to infinity, the curve converges to the optimal solution (Showed before as the black solid line).

Also, we can see the evolution of the cost vs virtual time (iterations), proving that it is always non-increasing.

<p align="center">
<img src="graphics/1D-GFDCOst.jpg">
</p>
