from functools import reduce

print(
    *reduce(
        lambda acc, x:
            (x, acc[1]) if x > acc[0]
            else (acc[0], x) if x < acc[1]
            else acc,
        map(int, input().split()),
        (-float("inf"), float("inf"))
    )
)
