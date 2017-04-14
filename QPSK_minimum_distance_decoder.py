import numpy as np 
import pprint
import pickle

import numpy as np 
import pprint
import pickle

M = 8
N = 8
n_input = 1000
# w_list = np.random.random_integers(0,M-1,n_input)
w_list = np.load("w_list_M_8_n_1000.npy")
P_list = np.arange(0.1,10,0.1)
# P_list = np.logspace(np.log10(0.01), np.log10(10), num=200, endpoint=True, base=10.0)
ber_list = []

codebook_book = {}
for P in P_list:
	qpsk = np.array([1+1j,1-1j,-1+1j,-1-1j])
	codebook_book[P] = np.sqrt(P)*np.random.choice(qpsk,[M,N])



for P in P_list:
	n_iter = 1
	ber_sub_list = []
	for j in range(n_iter):
		sigma = 1
		codebook = codebook_book[P]
		noise_real = np.random.normal(0,sigma, [n_input,N])
		noise_imag =  np.random.normal(0,sigma, [n_input,N])
		noise_mat = noise_real + noise_imag*(1j)

		x_mat = []
		for x in w_list:
			x_mat.append(codebook[x,:])
		x_mat = np.array(x_mat)

		y_mat = x_mat + noise_mat

		w_hat_list = []
		for y in y_mat:
			min_dist = 99999
			min_id = 0
			for t in range(codebook.shape[0]):
				dist = np.linalg.norm(codebook[t,:]-y)
				if(dist <= min_dist):
					min_dist = dist
					min_id = t

			w_hat_list.append(min_id)

		w_hat_list = np.array(w_hat_list)


		ber_sum = 0
		for i in range(len(w_list)):
			xor_int = w_list[i]^w_hat_list[i]
			ber_sum += sum(map(int, list((bin(xor_int).split("b")[1]))))

		ber = float(ber_sum)/(np.ceil(np.log2(M))*n_input)
		ber_sub_list.append(ber)

	ber_sub_list = np.array(ber_sub_list)
	ber_list.append(ber_sub_list.mean())

	print(ber_sub_list.mean())

ber_list = np.array(ber_list)

