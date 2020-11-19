import multiprocessing as mp
import time
import sys
import argparse
import os
import numpy as np

def initGraph(filename,seed):
    file = open(filename,'r')
    lines = file.readlines()
    file.close()
    node_num = int(lines[0].split(" ")[0])
    graph = [[] for row in range(node_num+1)]
    for line in lines[1:]:
        strs = line.split(" ")
        graph[int(strs[0])].append((int(strs[1]),float(strs[2])))
    file = open(seed,'r')
    lines = file.readlines()
    file.close()
    activateSet = [False for row in range(node_num+1)]
    seedSet = [int(row) for row in lines]
    for row in seedSet:
        activateSet[row] = True
    return graph, seedSet, activateSet

def IC(graph,activateQueue,activateSet):
    count = len(activateQueue)
    while (len(activateQueue) != 0):
        newActivateQueue = list()
        for seed in activateQueue:
            for neighbor in graph[seed]:
                if activateSet[neighbor[0]] == False:
                    random_num = np.random.random()
                    if neighbor[1] > random_num:
                        activateSet[neighbor[0]] = True
                        newActivateQueue.append(neighbor[0])
        count += len(newActivateQueue)
        activateQueue = newActivateQueue
    return count

def LT(graph,activateQueue,activateSet):
    count = len(activateQueue)
    record = {}
    thresh = {}
    while(len(activateQueue) != 0):
        newActivateQueue = list()
        for seed in activateQueue:
            for neighbor in graph[seed]:
                if activateSet[neighbor[0]] == False:
                    if neighbor[0] not in record.keys():
                        record[neighbor[0]] = 0.0
                        thresh[neighbor[0]] = np.random.random()
                    record[neighbor[0]] += neighbor[1]
                    if record[neighbor[0]] >= thresh[neighbor[0]]:
                        activateSet[neighbor[0]] = True
                        newActivateQueue.append(neighbor[0])
        count += len(newActivateQueue)
        activateQueue = newActivateQueue
    return count

def getDepth(seed_num):
    depth = 0
    if seed_num >= 50:
        depth = 1000
    elif seed_num >= 40:
        depth = 2500
    elif seed_num >= 30:
        depth = 5000
    elif seed_num >= 20:
        depth = 8000
    else:
        depth = 10000
    return int(depth*2)


if __name__ == '__main__':
    time1 = time.time()
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--file_name', type=str, default='NetHEPT.txt')
    parser.add_argument('-s', '--seed', type=str, default='network_seeds.txt')
    parser.add_argument('-m', '--model', type=str, default='LT')
    parser.add_argument('-t', '--time_limit', type=int, default=60)
    args = parser.parse_args()
    file_name = args.file_name
    seed = args.seed
    model = args.model
    time_limit = args.time_limit
    graph, activateQueue, activateSet = initGraph(args.file_name,args.seed)
    sum = 0
    # depth = getDepth(len(activateQueue))
    depth = 99999999
    if args.model == 'IC':
        for i in range(depth):
            sum += IC(graph,activateQueue.copy(),activateSet.copy())
            if(time.time() - time1 > time_limit-8):
                depth = i + 1
                break
        print(sum / float(depth))
        # print(depth)
    elif args.model == 'LT':
        for i in range(depth):
            sum += LT(graph,activateQueue.copy(),activateSet.copy())
            if (time.time() - time1 > time_limit-8):
                depth = i + 1
                break
        print(sum / float(depth))
        # print(depth)
    sys.stdout.flush()