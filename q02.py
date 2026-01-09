from functools import reduce

print(
    *reduce(
        lambda acc, x:
            (x[1], x[0]) if x[1] > acc[0] else acc,
        enumerate(map(int, input().split())),
        (-float("inf"), -1)
    )
)
