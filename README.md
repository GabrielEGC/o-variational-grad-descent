# o-variational-grad-descent
This research looks for some way to generalize the classic gradient descent, but instead of applying it to function, we apply it to functionals (Optimal Control is basically minimize a Functional with restrictions).
We reduce the problem to partial differential equation with two times. One is the time of the system evolution, and the other is the "virtual time", a continous version of the iterations performed analogously to the iterations of classic gradient descent.
Talking to pure mathematical friends, they told me that that concept is actually "foliations", so its closer to maths than engineering.
However research can be improved by getting some fast ways to compute the solution of the partial differential equations with numerical analysis.
