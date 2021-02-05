import multiprocessing as mp
import time
import sys
import argparse
import os
import numpy as np

def initGraph(filename,seedSet):
    file = open(filename,'r')
    lines = file.readlines()
    file.close()
    node_num = int(lines[0].split(" ")[0])
    graph = [[] for row in range(node_num+1)]
    for line in lines[1:]:
        strs = line.split(" ")
        graph[int(strs[0])].append((int(strs[1]),float(strs[2])))
    activateSet = [False for row in range(node_num+1)]
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

def run(file_name,seeds,model,num):
    graph, activateQueue, activateSet = initGraph(file_name, seeds)
    sum = 0
    if model == 'IC':
        for i in range(num):
            sum += IC(graph, activateQueue.copy(), activateSet.copy())
        return sum / float(num)
    elif model == 'LT':
        for i in range(num):
            sum += LT(graph, activateQueue.copy(), activateSet.copy())
        return sum / float(num)