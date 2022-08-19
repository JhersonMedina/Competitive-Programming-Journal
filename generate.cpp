#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <cmath>
#include <chrono>
#include <vector>
#include <set>
#include <map>
#include <unordered_set>
#include <unordered_map>
#include <queue>
#include <ctime>
#include <cassert>
#include <complex>
#include <string>
#include <cstring>
#include <chrono>
#include <random>
#include <bitset>
#include <array>

using namespace std;
/* *
 *
 * Too many mind, no mind.
 *
 * */
int main() {
	ios_base::sync_with_stdio(0), cin.tie(0), cout.tie(0);
	//freopen("input.txt", "r", stdin);
	//freopen("output.txt", "w", stdout);
	mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());
	auto rand = [&](int l, int r) -> int {
		return uniform_int_distribution<int>(l,r)(rng);
	};

	// Generate cases
	cout << 1 << '\n';
	int n = rand(1, 5);
	cout << n << endl;
	for (int i = 1; i <= n; i++) {
		cout << rand(0, 5) << ' ';
	}
	cout << endl;
	return 0;
}

