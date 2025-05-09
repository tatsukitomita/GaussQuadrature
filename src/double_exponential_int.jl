
f(x) = sqrt(1 - x^2)

function double_exponential_integrate(f; N=100, ts = 0.1)
    result = 0.0

    for k in -N:N
        t = k * ts
        x = tanh(π/2 * sinh(t))
        dxdt = π/2 * cosh(t) * (1 / cosh(π/2 * sinh(t))^2)
        h = ts * dxdt

        result += f(x) * h
    end
    return result
end

I = double_exponential_integrate(f)
error = abs(I - π / 2)

println("Double Exponential Integral: ", I)
println("Error: ", error)