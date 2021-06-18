#include<bits/stdc++.h>
using namespace std;

int n;
vector<int> max_remain;
vector<int> remain;
map<string, vector<int> > mp_max;
map<string, vector<int> > mp_allo;

vector<int> read_vector(){
    vector<int> v;
    for(int i=0, tmp;i<n;i++){
        scanf("%d", &tmp);
        v.push_back(tmp);
    }
    return v;
}

bool verify_max(vector<int> v){
    for(int i=0;i<n;i++){
        if (v[i]>max_remain[i]){
            return false;
        }
    }
    return true;
}

bool verify_remain(vector<int> request){
    for(int i=0;i<n;i++){
        if (request[i]>remain[i]){
            return false;
        }
    }
    return true;
}

bool verify_need(string pid, vector<int> request){
    vector<int> max_v = mp_max[pid];
    vector<int> allo = mp_allo[pid];
    for(int i=0;i<n;i++){
        if(request[i]>max_v[i]-allo[i]){
            return false;
        }
    }
    return true;
}

bool verify_safe(string pid, vector<int> request){
    vector<int> check_need = vector<int> (n);
    for (int i=0;i<n;i++) {
        check_need[i] = remain[i] - request[i];
        mp_allo[pid][i] += request[i];
        remain[i] -= request[i];
    }

    int thread_num = 0;
    set<string> not_alive;
    while(true){
        string choose_pid = "";
        for(map<string, vector<int> >::iterator it = mp_max.begin(); it!=mp_max.end(); it++) {
            string it_pid = it->first;
            if(not_alive.find(it_pid) != not_alive.end()){ // be moved
                continue;
            }
            vector<int> max_v = mp_max[it_pid];
            vector<int> allo = mp_allo[it_pid];
            bool flag = true;
            for(int i=0;i<n;i++){
                if(max_v[i]-allo[i] > check_need[i]) {
                    flag = false;
                }
            }
            if(flag) {
                choose_pid = it_pid;
                break;
            }
        }

        if(choose_pid == "") break;
        for(int i=0;i<n;i++){
            check_need[i] += mp_allo[choose_pid][i];
        }
        not_alive.insert(choose_pid);
        thread_num++;
    }

    if (thread_num == mp_max.size()){
        return true;
    }
    for (int i=0;i<n;i++) {
        mp_allo[pid][i] -= request[i];
        remain[i] += request[i];
    }
    return false;
}

int main(){
    scanf("%d",&n);
    max_remain = remain = read_vector();

    string pid, opt;
    while(cin >> pid >> opt){
        if (opt == "new") {
            vector<int> tmp = read_vector();
            if (mp_max.find(pid) != mp_max.end()) {
                cout << "NOT OK\n";
            } else {
                if (!verify_max(tmp)){
                    cout << "NOT OK\n";
                } else {
                	mp_max[pid] = tmp;
                    mp_allo[pid] = vector<int> (n,0);
                	cout << "OK\n";
				}
            }
        } else if (opt == "request") {
            vector<int> request = read_vector();
            if(mp_max.find(pid) == mp_max.end()) {
                cout << "NOT OK\n";
            } else {
                for(int i=0;i<0;i++){
                    cout << remain[i] << " \n";
                }
                if(verify_remain(request) && verify_need(pid, request) && verify_safe(pid, request)){
                    cout << "OK\n";
                } else {
                    cout << "NOT OK\n";
                }
            }
        } else if (opt == "terminate") {
            if(mp_max.find(pid) == mp_max.end()) {
                cout << "NOT OK\n";
            } else {
                for(int i=0;i<n;i++){
                    remain[i] += mp_allo[pid][i];
                }
                mp_max.erase(pid);
                mp_allo.erase(pid);
                cout << "OK\n";
            }
        }
    }
}