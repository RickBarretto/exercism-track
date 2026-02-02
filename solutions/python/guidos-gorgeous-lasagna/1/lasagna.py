"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME_PER_LAYER = 2

def bake_time_remaining(time: int) -> int:
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME -  time


def preparation_time_in_minutes(layers: int) -> int:
    """Calculate the preparation bake time.

    :param layers: int - the amount of layer to be baked.
    :return: int - the preparation time (in minutes) derived from 'PREPARATION_TIME_PER_LAYER'.
    """
    return layers * PREPARATION_TIME_PER_LAYER


def elapsed_time_in_minutes(layers: int, bake_time : int) -> int:
    """Calculate the elapsed bake time.

    :param layers: int - the number of layers added to the lasagna.
    :param bake_time: int - the number of minutes the lasagna has been baking in the oven.
    :return: int - the elapsed time (in minutes) derived from 'preparation_time_in_minutes'.
    """
    return (
        preparation_time_in_minutes(layers) + bake_time
    )

