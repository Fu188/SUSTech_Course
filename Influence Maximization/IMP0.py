import random
import numpy as np
import math
import sys
import time
import argparse
# import test

def initGraph(filename):
    file = open(filename,'r')
    lines = file.readlines()
    file.close()
    node_num = int(lines[0].split(" ")[0])
    graph = [[] for row in range(node_num+1)]
    for line in lines[1:]:
        strs = line.split(" ")
        graph[int(strs[1])].append((int(strs[0]),float(strs[2])))
    return graph,node_num

def logCnk(n,k):
    ans = 0
    for i in range(n, n-k, -1):
        ans += math.log(i)
    for i in range(1,k+1):
        ans -= math.log(i)
    return ans

def generate_IC(graph,node):
    activateSet = list()
    activateSet.append(node)
    activateQueue = list()
    activateQueue.append(node)
    while (len(activateQueue) != 0):
        newActivateQueue = list()
        for seed in activateQueue:
            for neighbor in graph[seed]:
                if neighbor[0] not in activateSet:
                    random_num = np.random.random()
                    if neighbor[1] > random_num:
                        activateSet.append(neighbor[0])
                        newActivateQueue.append(neighbor[0])
        activateQueue = newActivateQueue
    return activateSet

def generate_LT(graph,node):
    activateSet = list()
    activateQueue = node
    activateSet.append(node)
    while(activateQueue != None):
        newActivateQueue = None
        neighbors = graph[activateQueue]
        if len(neighbors) >0:
            neighbor = random.sample(neighbors,1)[0]
            if neighbor[0] not in activateSet:
                activateSet.append(neighbor[0])
                newActivateQueue = neighbor[0]
        activateQueue = newActivateQueue
    return activateSet

def generate_rr(graph,node):
    global model
    if model == 'IC':
        return generate_IC(graph,node)
    if model == 'LT':
        return generate_LT(graph,node)

def node_selection(R,k,n):
    Sk = set()
    cnt_in_rr = [0 for i in range(n+1)]
    rr_include_node = {}
    cnt_covered = 0
    for i in range(len(R)):
        rr = R[i]
        for rr_node in rr:
            cnt_in_rr[rr_node] += 1
            if rr_node not in rr_include_node:
                rr_include_node[rr_node] = set()
            rr_include_node[rr_node].add(i)
    while len(Sk) < k:
        max_node = cnt_in_rr.index(max(cnt_in_rr))
        Sk.add(max_node)
        cnt_covered += len(rr_include_node[max_node])
        rr_covered = rr_include_node[max_node].copy()
        for rr_index in rr_covered:
            rr = R[rr_index]
            for rr_node in rr:
                cnt_in_rr[rr_node] -= 1
                rr_include_node[rr_node].remove(rr_index)
    FRSk = cnt_covered / len(R)
    return Sk, FRSk



def Sampling(G,k,epsoid,l,n):
    R = []
    LB = 1
    epsoid_ = math.sqrt(2)*epsoid
    for i in range(1,int(math.log2(n-1))+1):
        x = n / math.pow(2,i)
        lambda_ = ((2 + 2 * epsoid_ / 3.0) * (logCnk(n,k) + l * math.log(n) + math.log(math.log2(n))) * n) / pow(epsoid_,2)
        theta_i = lambda_ / x
        while len(R) <= theta_i :
            random_node = random.randint(1,n)
            RR = generate_rr(G,random_node)
            R.append(RR)
        Si, FRSi = node_selection(R,k,n)
        if n * FRSi >= (1 + epsoid_) * x:
            LB = n * FRSi / (1 + epsoid_)
            break
    alpha = math.sqrt(l * math.log(n) + math.log(2))
    beta = math.sqrt((1-1/math.e)*(logCnk(n,k) + l*math.log(n) + math.log(2)))
    lambda_star = 2 * n * pow(((1-1/math.e)*alpha + beta),2) * pow(epsoid,-2)
    theta = lambda_star / LB
    while len(R) <= theta:
        random_node = random.randint(1,n)
        RR = generate_rr(G,random_node)
        R.append(RR)
    return R



def IMM(G,k,epsoid,l,n):
    l = l * (1 + math.log(2) / math.log(n))
    R = Sampling(G,k,epsoid,l,n)
    Sk, _ = node_selection(R,k,n)
    return Sk

if __name__ == '__main__':
    # time1 = time.time()
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--file_name', type=str, default='NetHEPT.txt')
    parser.add_argument('-k', '--seed', type=int, default=50)
    parser.add_argument('-m', '--model', type=str, default='LT')
    parser.add_argument('-t', '--time_limit', type=int, default=60)
    args = parser.parse_args()
    file_name = args.file_name
    seed_size = args.seed
    model = args.model
    time_limit = args.time_limit

    graph, node_num = initGraph(file_name)
    epsoid = 0.1
    l = 1
    seeds = IMM(graph,seed_size,epsoid,l,node_num)
    # print("IMP time:%f"%(time.time()-time1))
    # print(seeds)
    for seed in seeds:
        print(seed)
    # print(test.run(file_name,seeds,"IC",2000))
    # print(test.run(file_name,seeds,"LT",2000))

    sys.stdout.flush()


