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
        rr_covered = rr_include_node[max_node].copy()
        for rr_index in rr_covered:
            rr = R[rr_index]
            for rr_node in rr:
                cnt_in_rr[rr_node] -= 1
                rr_include_node[rr_node].remove(rr_index)
    return Sk

def Sampling(G,n,t):
    time0 = time.time()
    R = []
    while(time.time()-time0 < t*5/9 and len(R)<4000000):
        random_node = random.randint(1, n)
        RR = generate_rr(G,random_node)
        R.append(RR)
    return R



def IMM(G,k,n,t):
    R = Sampling(G,n,t)
    Sk = node_selection(R,k,n)
    return Sk

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--file_name', type=str, default='testcases/NetHEPT.txt')
    parser.add_argument('-k', '--seed', type=int, default=50)
    parser.add_argument('-m', '--model', type=str, default='LT')
    parser.add_argument('-t', '--time_limit', type=int, default=60)
    args = parser.parse_args()
    file_name = args.file_name
    seed_size = args.seed
    model = args.model
    time_limit = args.time_limit

    # file_name,seed = "epinions-d-5.txt",500
    # file_name,seed_size = "twitter-d.txt",50
    graph, node_num = initGraph(file_name)
    seeds = IMM(graph,seed_size,node_num,time_limit)
    # print("IMP time:%f"%(time.time()-time1))
    for seed in seeds:
        print(seed)
    # print(test.run(file_name,seeds,"IC",200))
    # print(test.run(file_name,seeds,"LT",200))

    sys.stdout.flush()


