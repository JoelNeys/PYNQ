import pynq
import pynq.lib
from .constants import *


__author__ = "Joel Neys"
__copyright__ = "Copyright 2020, IMEC"
__email__ = "joel.neys.ext@imec.be"


class BaseOverlay(pynq.Overlay):
    """ The Base overlay for the Enclustra Mercury-ZX5

    This overlay exposes the following attributes:

    Attributes
    ----------

    """

    def __init__(self, bitfile, **kwargs):
        super().__init__(bitfile, **kwargs)
        if self.is_loaded():
            self.leds = self.leds_gpio.channel1
            self.leds.setlength(4)
            self.leds.setdirection("out")
