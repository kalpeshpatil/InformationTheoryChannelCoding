#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2017 <+YOU OR YOUR COMPANY+>.
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

import numpy as np
from gnuradio import gr
import sys

M = 20
N = 8
P_list = np.arange(0.1,10,0.1)
codebook_book = {}
for P in P_list:
    qpsk = np.array([1+1j,1-1j,-1+1j,-1-1j])
    codebook_book[P] = np.sqrt(P/2)*np.random.choice(qpsk,[M,N])


sigma = 1.0

class qpsk_codebook_20_ff(gr.sync_block):
    """
    docstring for block qpsk_codebook_20_ff
    """
    def __init__(self, mu):
        self.mu = mu
        self.codebook = codebook_book[mu]
        # mu = float(raw_input("type power"))
        # print(P)
        gr.sync_block.__init__(self,
            name="qpsk_codebook_20_ff",
            in_sig=[np.float32],
            out_sig=[np.float32])


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
        # <+signal processing here+>

        out_vec = np.zeros(in0.shape)
        for i in range(in0.shape[0]):
            noise_real = np.random.normal(0,sigma/np.sqrt(2),N)
            noise_imag =  np.random.normal(0,sigma/np.sqrt(2),N)
            noise_vec = noise_real + noise_imag*(1j)
            
            x = self.codebook[int(in0[i]),:]
            y = x + noise_vec
            min_dist = 99999.0
            for t in range(self.codebook.shape[0]):
                dist = np.linalg.norm(self.codebook[t,:]-y)
                if(dist <= min_dist):
                    min_dist = dist
                    min_id = t

            out_vec[i] = np.float(min_id)

        out[:] = out_vec
        # print("out",out.shape,out_vec)
        # print("in",in0.shape,in0)

        # out[:] = in0

        return len(output_items[0])
