p = 16007670376277647657
g = 2
A = 11946771674403459271
B = 9280824705385208450

def solve_discrete_log(p, g, A, B):
    F = GF(p)
    g, A = F(g), F(A)
    a = discrete_log(A, g)
    return pow(B, int(a), p)

print(solve_discrete_log(p, g, A, B))
