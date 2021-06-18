#pragma GCC optimize("O3")

#include <cstdio>
#include <vector>
#include <cmath>
#include <queue>
#include <list>
#include <algorithm>
#include <unordered_map>

using namespace std;

static size_t cache_size = 0;
static int algorithm = 0;
static size_t query_num = 0;
static size_t hit = 0;
static vector<size_t> query_page;

inline size_t read();
void input_data();
void FIFO();
void MIN();
void LRU();
void Clock();
void display();

int main() {
//	freopen("test3.txt", "r", stdin);
    input_data();
    switch (algorithm) {
        case 0: {FIFO(); break;}
        case 1: {LRU(); break;}
        case 2: {MIN(); break;}
        case 3: {Clock(); break;}
        default: FIFO();
    }
    display();
    return 0;
}

void FIFO() {
    deque<size_t> fifo_queue;
    for (auto page : query_page) {
        bool flag = false;
        for (auto cache: fifo_queue) {
            if (cache == page){
                ++hit;
                flag = true;
                break;
            }
        }
        if (flag) continue;
        if (fifo_queue.size() == cache_size) {
            fifo_queue.pop_front();
        }
        fifo_queue.push_back(page);
    }
}

void MIN() {
    unordered_map<size_t, size_t> mp;
    priority_queue<pair<size_t, size_t>> pq;
    vector<size_t> next(query_num,0x7fffffff);
    for (int i = query_num - 1; i >= 0; --i) {
        auto pair = mp.find(query_page[i]);
        if (pair != mp.end()) {
            next[i] = pair->second;
        }
        mp[query_page[i]] = i;
    }
    mp.clear();
    for (int i = 0; i<query_num; ++i) {
        size_t page = query_page[i];
        auto pair = mp.find(page);
        if (pair != mp.end()) {
            ++hit;
        } else {
            if (mp.size() == cache_size) {
                auto tmp = pq.top();
                pq.pop();
                mp.erase(tmp.second);
            }
            mp[page] = 1;
        }
        pq.push(make_pair(next[i],page));
    }
}

void LRU() {
    list<size_t> lru_queue;
    size_t queue_size = 0;
    for (auto page : query_page) {
        auto cache = find (lru_queue.begin(), lru_queue.end(), page);
        if (cache != lru_queue.end()) {
            ++hit;
            lru_queue.erase(cache);
            lru_queue.push_front(page);
        } else {
            if (queue_size == cache_size) {
                lru_queue.pop_back();
                lru_queue.push_front(page);
            } else {
                lru_queue.push_front(page);
                ++queue_size;
            }

        }
    }
}

void Clock() {
    vector<pair <size_t, int> >  pair_list(cache_size, make_pair(-1,0));
    size_t pointer = 0;
    for (auto page :  query_page) {
        auto find = find_if(pair_list.begin(), pair_list.end(), [page](pair<size_t, int> p) {return p.first == page;});
        if (find != pair_list.end()) {
            ++hit;
            find -> second = 1;
        } else {
            while(pair_list[pointer].second==1){
                pair_list[pointer].second=0;
                pointer = (pointer+1)%cache_size;
            }
            pair_list[pointer] = make_pair(page, 1);
            pointer = (pointer+1)%cache_size;
        }
    }
}


inline size_t read()
{
	size_t X=0; bool flag=1; char ch= getchar();
	while(ch<'0'||ch>'9') {if(ch=='-') flag=0; ch=getchar();}
	while(ch>='0'&&ch<='9') {X=(X<<1)+(X<<3)+ch-'0'; ch=getchar();}
	if(flag) return X;
	return ~(X-1);
}

void display(){ 
//	printf("%d\n",hit);
    printf("Hit ratio = %05.2f%%",round((10000.0f * hit)/query_num)/100.0f);
}

void input_data(){
    cache_size = read();
    algorithm = read();
    query_num = read();
    query_page.reserve(query_num);
    for (size_t i=0; i<query_num; ++i) {
        query_page.push_back(read());
    }
}



