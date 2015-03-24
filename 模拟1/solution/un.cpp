#include <iostream>
#include <string>
#include <cstdio>
using namespace std;

int main() {
	freopen("un.in","r",stdin);
	freopen("un.out","w",stdout);
	string a;
	cin >> a;
	for (int i = 0; i < (int)a.size(); ++i) {
		if (string("CAMBRIDGE").find(a[i]) == string::npos) {
			cout << a[i];
		}
	}
	cout << endl;
}
