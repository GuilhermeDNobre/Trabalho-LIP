from functools import reduce

print(
    *(
        (lambda L:
            (lambda p:
                reduce(
                    lambda acc, x: acc + x,
                    map(
                        lambda n: [] if n == p else [n],
                        L
                    ),
                    []
                )
            )(int(input()))
        )(list(map(int, input().split())))
    )
)
