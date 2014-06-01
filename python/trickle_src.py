#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2014 Marcus Müller.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

import numpy
from gnuradio import gr
import time
class trickle_src(gr.sync_block):
    """
    docstring for block trickle_src
    """
    def __init__(self):
        gr.sync_block.__init__(self,
            name="trickle_src",
            in_sig=None,
            out_sig=[numpy.uint8])


    def work(self, input_items, output_items):
        out = output_items[0]
        # <+signal processing here+>
        print "{:f} src: sleeping".format(time.time() % 60)
        time.sleep(1)
        out[:3] = [1,2,3]
        print "{:f} src: producing {:d} items, {:d} total so far".format(time.time() % 60, 3, self.nitems_written(0))
        return 3

