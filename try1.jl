@doc_str "Calculates x for `0 = a*x^2+b*x+c`, arguments types can be defined
in function definitions"
function quadratic2(a::Float64, b::Float64, c::Float64)
    quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a
    sqr_term = sqrt(b^2-4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    r1, r2
end
