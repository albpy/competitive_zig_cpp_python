# sum of first n natural numbers is given by,
#                                       (n*(n+1)//2)
# sum of squares of first n natural number is,
#                                       (n*(n+1)(2n+1))/6

def squareOfSum(number : int):
    sum = number * (number + 1) / 2
    return sum * sum

def sumOfSquares(number : int):
   return number * (number + 1) * (2 * number + 1) / 6


def differenceOfSquares(number: int): 
    return squareOfSum(number) - sumOfSquares(number)

if __name__ == "__main__":
    print(differenceOfSquares(3))