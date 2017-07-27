"""
This Module is used to perform operations over collections
"""


class CalculatorClass(object):
    """
    This Class is used to perform aggregate functions
    """

    def sum(self, num_list):
        """
        Just iterate through each index and add it into
        an accumulator variable
        """
        list_size = len(num_list)
        acum = 0
        for i in range(0, list_size):
            acum += num_list[i]
        return acum
