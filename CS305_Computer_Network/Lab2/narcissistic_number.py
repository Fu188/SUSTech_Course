def find_narcissistic_number(start:int,end:int):
    num_list = list()
    if start < 0:
        start = 0
    if start > end:
        return num_list
    for i in range(start,end):
        length = len(str(i))
        cnt = 0
        for j in range(length):
            cnt += int(str(i)[j]) ** length
        if cnt == i:
            num_list.append(i)
    return num_list