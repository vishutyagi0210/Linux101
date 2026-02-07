#include<iostream>
using namespace std;

int main(){
    string s = "vishal";

    for (int i = 0; i<=s.length()/2; i++){
        char temp = s[i];
        s[i] = s[s.length()-1-i];
        s[s.length()-1-i] = temp;
        cout<<"I ran!!";
    }

    cout<<s;
}