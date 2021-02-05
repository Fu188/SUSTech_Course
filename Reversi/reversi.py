import numpy as np
import random
import time

COLOR_BLACK = -1
COLOR_WHITE = 1
COLOR_NONE = 0
random.seed(0)

DIR = ((-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)) # 閺傜懓鎮滈崥鎴﹀櫤
DIR_o = ((0,1),(1,0),(0,-1),(-1,0))

WeightMap =  [[ 1000, -200, 40, 40, 40, 40, -200, 1000],
             [ -200,-500,-7,  -7,  -7,-7,-500, -200],
             [  40, -7,  3,  2,  2,  3, -7, 40],
             [  40,   -7,  2,1,1,  2,   -7, 40],
             [  40,   -7,  2,1,1,  2,   -7, 40],
             [  40, -7,  3,  2,  2,  3, -7, 40],
             [ -200,-500,-7,  -7,  -7,-7,-500, -200],
             [ 1000, -200, 40, 40, 40, 40, -200, 1000]]

def evalution(preMove,moves,board,mycolor,round):
    mobility_score = get_mobility(moves,board,mycolor)
    map_score = get_weightMap(board,mycolor)
    stable_score = get_stable(board,mycolor)
    num_score = get_chessDiff(board,mycolor)
    smooth_score = get_smooth(preMove[0],preMove[1],board,np.zeros((8,8),int))
    positive = 1
    if smooth_score%2 == 0:
        positive = -1
    if round <= 15:
        total_score = map_score + 500*stable_score + 50* mobility_score-20*num_score
    elif round <= 30:
        total_score = map_score + 400 * stable_score + 150 * mobility_score - 10 * num_score
    elif round <= 40:
        total_score = map_score + 300 * stable_score + 100 * mobility_score - 5 * num_score + 200*positive
    elif round <= 50:
        total_score = map_score + 250 * stable_score + 80 * mobility_score + 0 * num_score + 160*positive
    elif round <= 60:
        total_score = 0.5* map_score + 150* stable_score + 50* mobility_score + 50*num_score + 100*positive
    else:
        total_score = 100*stable_score + 50*mobility_score + 200*num_score + 100*positive
    return total_score

def get_smooth(i,j,preboard,mark):
    if i<0 or j<0 or i>7 or j>7 or preboard[i][j]!=0 or mark[i][j]==1:
        return 0
    mark[i][j] = 1
    return 1 + get_smooth(i+1,j,preboard,mark) + get_smooth(i-1,j,preboard,mark) + get_smooth(i,j-1,preboard,mark) + get_smooth(i,j+1,preboard,mark)

def get_mobility(moves,board,mycolor):
    opponent_moves, _ = getValidPlace(board,-mycolor)
    mobility = len(moves)-len(opponent_moves)
    return mobility

def get_weightMap(board,mycolor):
    weight_map_score = 0
    newBoard = WeightMap.copy()
    if(newBoard[0][0]==mycolor):
        newBoard[0][1], newBoard[1][0], newBoard[1][1] = 500,500,500
    if(newBoard[0][7]==mycolor):
        newBoard[0][6], newBoard[1][7], newBoard[1][6] = 500,500,500
    if(newBoard[7][7]==mycolor):
        newBoard[7][6], newBoard[6][7], newBoard[6][6] = 500,500,500
    if(newBoard[7][0]==mycolor):
        newBoard[7][1], newBoard[6][0], newBoard[6][1] = 500,500,500
    for i in range(len(board)):
        for j in range(len(board[i])):
            weight_map_score += board[i][j] * newBoard[i][j]
    weight_map_score *= mycolor
    return weight_map_score

def get_stable(board,mycolor):
    stable_num = 0
    corner = ((0,0),(0,7),(7,7),(7,0))
    stable = np.zeros((8,8),int)
    for i in range(4):
        if board[corner[i][0]][corner[i][1]] == mycolor:
            stable[corner[i][0]][corner[i][1]] = 1
            for j in range(1,7):
                if board[corner[i][0]+DIR_o[i][0]*j][corner[i][1]+DIR_o[i][1]*j] == mycolor:
                    stable[corner[i][0]+DIR_o[i][0]*j][corner[i][1]+DIR_o[i][1]*j] = 1
                else:
                    break
    for i in range(4):
        index = (4-i) % 4
        if board[corner[index][0]][corner[index][1]] == mycolor:
            for j in range(1,7):
                temp = (5-i)%4
                if board[corner[index][0]+DIR_o[temp][0]*j][corner[index][1]+DIR_o[temp][1]*j] == mycolor:
                    stable[corner[index][0] + DIR_o[temp][0] * j][corner[index][1] + DIR_o[temp][1] * j] = 1
                else:
                    break
    for i in range(1,7):
        for j in range(1,7):
            if board[i][j] == mycolor and stable[i][j]!=1:
                if (stable[i-1][j]==1 and stable[i][j-1]==1 and (stable[i-1][j+1]==1 or stable[i+1][j-1]==1)):
                    stable[i][j] = 1
                else:
                    break
    for i in range(1,7):
        for j in range(6,0,-1):
            if board[i][j] == mycolor and stable[i][j]!=1:
                if (stable[i-1][j]==1 and stable[i][j+1]==1 and (stable[i-1][j-1]==1 or stable[i+1][j+1]==1)):
                    stable[i][j] = 1
                else:
                    break

    for i in range(6,0,-1):
        for j in range(1,7):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[i][j-1]==1 and stable[i+1][j]==1 and (stable[i-1][j-1]==1 or stable[i+1][j+1]==1)):
                    stable[i][j] = 1
                else:
                    break

    for i in range(6,0,-1):
        for j in range(6,0,-1):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[i+1][j]==1 and stable[i][j+1]==1 and (stable[i+1][j-1]==1 or stable[i-1][j+1]==1)):
                    stable[i][j] = 1
                else:
                    break

    for i in range(1, 7):
        for j in range(1, 7):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[j - 1][i] == 1 and stable[j][i - 1] == 1 and (
                        stable[j - 1][i + 1] == 1 or stable[j + 1][i - 1] == 1)):
                    stable[j][i] = 1
                else:
                    break
    for i in range(1, 7):
        for j in range(6, 0, -1):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[j - 1][i] == 1 and stable[j][i + 1] == 1 and (
                        stable[j - 1][i - 1] == 1 or stable[j + 1][i + 1] == 1)):
                    stable[j][i] = 1
                else:
                    break

    for i in range(6, 0, -1):
        for j in range(1, 7):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[j][i - 1] == 1 and stable[j + 1][i] == 1 and (
                        stable[j - 1][i - 1] == 1 or stable[j + 1][i + 1] == 1)):
                    stable[j][i] = 1
                else:
                    break

    for i in range(6, 0, -1):
        for j in range(6, 0, -1):
            if board[i][j] == mycolor and stable[i][j] != 1:
                if (stable[j + 1][i] == 1 and stable[j][i + 1] == 1 and (
                        stable[j + 1][i - 1] == 1 or stable[j - 1][i + 1] == 1)):
                    stable[j][i] = 1
                else:
                    break

    for i in range(8):
        for j in range(8):
            if stable[i][j] == 1:
                stable_num+=1
    return stable_num

def get_chessDiff(board,mycolor):
    my_chess = 0
    opponent_chess = 0
    for i in range(len(board)):
        for j in range(len(board[i])):
            if board[i][j] == mycolor:
                my_chess+=1
            elif board[i][j] == -mycolor:
                opponent_chess += 1
    return my_chess-opponent_chess

def count_round(board):
    cnt = 0
    for i in range(len(board)):
        for j in range(len(board[i])):
            cnt += abs(board[i][j])
    return cnt

def get_depth(board):
    cnt = count_round(board)
    if cnt > 52:
        return 6,cnt
    if cnt > 45:
        return 5,cnt
    if cnt > 8:
        return 2,cnt
    return 4,cnt

def place(board, x, y, color):
    if x < 0 or x >= len(board) or y < 0 or y >= len(board):
        return False
    board[x][y] = color
    valid = False
    for dir in range(len(DIR)):
        x_new = x + DIR[dir][0]
        y_new = y + DIR[dir][1]
        while x_new >= 0 and x_new < len(board) and y_new >=0 and y_new < len(board) and board[x_new][y_new] == -color:
            x_new += DIR[dir][0]
            y_new += DIR[dir][1]
        if x_new >= 0 and x_new < len(board) and y_new >= 0 and y_new < len(board) and board[x_new][y_new] == color:
            while not (x_new == x and y_new == y):
                x_new -= DIR[dir][0]
                y_new -= DIR[dir][1]
                board[x_new][y_new] = color
                if not(x_new == x and y_new == y):
                    valid = True
    return valid

def nextStep(board, mycolor,candidate_list):
    board = np.array(board)
    search_depth = 2
    alpha = -99999
    beta = 99999
    preMove = (-1,-1)
    round = count_round(board)
    _, move_best = minmax(preMove,board.copy(),mycolor,mycolor,search_depth,alpha,beta,round)
    if len(move_best) != 0:
        candidate_list.append(move_best)
    _, move_best = minmax(preMove, board.copy(), mycolor, mycolor, search_depth + 1, alpha, beta, round)
    if len(move_best) != 0:
        candidate_list.append(move_best)
    _, move_best = minmax(preMove, board.copy(), mycolor, mycolor, search_depth + 2, alpha, beta, round)
    if len(move_best) != 0:
        candidate_list.append(move_best)


def minmax(preMove,board, mycolor, current_color, depth, alpha, beta,round):
    validPlace, validBoard = getValidPlace(board,current_color)
    if depth == 0:
        return evalution(preMove,validPlace,board,mycolor,round),[]
    if len(validPlace) == 0:
        return evalution(preMove,validPlace,board,mycolor,round),[]
    if mycolor == current_color:
        score_best = -99999
        move_best = list()
        for i in range(len(validPlace)):
            current_score,_ = minmax(validPlace[i],validBoard[i],mycolor,-current_color,depth-1,alpha,beta,round)
            if score_best < current_score:
                move_best = validPlace[i]
                score_best = current_score
            alpha = max(alpha,score_best)
            if beta <= alpha:
                break
        return score_best,move_best
    else:
        score_best = 99999
        move_best = list()
        for i in range(len(validPlace)):
            current_score, _ = minmax(validPlace[i],validBoard[i],mycolor,-current_color,depth-1,alpha,beta,round)
            if score_best > current_score:
                move_best = validPlace[i]
                score_best = current_score
            beta = min(beta,score_best)
            if beta <= alpha:
                break
        return score_best,move_best

def getValidPlace(board,color):
    validPlace = list()
    validBoard = list()
    for i in range(8):
        for j in range(8):
            if board[i][j] == 0:
                newBoard = board.copy()
                if place(newBoard,i,j,color):
                    validPlace.append((i,j))
                    validBoard.append(newBoard)
    return validPlace, validBoard

class AI(object):
    def __init__(self, chessboard_size, color, time_out):
        self.chessboard_size = chessboard_size
        self.color = color
        self.time_out = time_out
        self.candidate_list = []

    def go(self, chessboard):
        self.candidate_list.clear()
        self.candidate_list,_ = getValidPlace(chessboard,self.color)
        nextStep(chessboard,self.color,self.candidate_list)