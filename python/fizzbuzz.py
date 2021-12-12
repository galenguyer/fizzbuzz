def main():
    for i in range(1, 101):
        result = ""
        if i % 3 == 0:
            result += "Fizz"
        if i % 5 == 0:
            result += "Buzz"
        if result == "":
            result += str(i)
        print(result)

if __name__ == "__main__":
    main()