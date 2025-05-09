using QuadGK

f(x) = sqrt(1 - x^2)

integral, err = quadgk(f, -1, 1, rtol = 1e-10)
error = abs(integral - π / 2)
println("QuadGK Integral: ", integral)
println("Error: ", error)