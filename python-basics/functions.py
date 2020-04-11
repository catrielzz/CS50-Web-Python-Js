def square(x):
    """
    This function returns the squared result from an input
    example = square(n) == n * n
    """
    return x * x

def main():
    for i in range(10):
        print(f"{i}, squared is {square(i)}")

if __name__ == "__main__":
    main()
