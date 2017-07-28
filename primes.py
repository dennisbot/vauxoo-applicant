"""
This module implements prime number operations
over natural numbers (integer types)
"""


class PrimeClass(object):
    """
    This class is used to hold prime number operations
    like if a number is prime or not, coprimes, etc
    """

    def is_prime(self, num_int):
        """
        is_prime method will return true or false depending
        of the primality of the int argument,
        we will be using and O(sqrt(N)) solution instead of the naive
        solution that has O(N) time complexity
        """

        from math import sqrt

        # we extract the middle point of divisors e.g 2, 3 are divisor of 6
        # but sqrt(6) = 2.44 so the max middle divisor is 2 the next one
        # will be 6/2 = 3 which is on the other middle side that's why it's
        # not necessary to iterate through N

        sqrt_n = int(sqrt(num_int))

        if num_int < 2:
            return False

        for div in range(2, sqrt_n + 1):
            if num_int % div == 0:
                return False

        return True
# if __name__ == '__main__':
    # import sys
    # you can write in the terminal "python primes.py 5"
    # print PrimeClass().is_prime(int(sys.argv[1]))
