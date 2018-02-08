// code_report Solution
// https://www.youtube.com/watch?v=dmP65LPl9wQ

struct pos {
	pos (int a, int b, int c) : val (a), x (b), y (c) {}
	bool operator< (const pos &d) const { return val > d.val; }
	int val, x, y;
};

vi xo = { 1, -1, 0, 0 };
vi yo = { 0, 0, 1, -1 };

bool isValid (int x, int y, int n) {
	return (x >= 0 && x < n && y >= 0 && y < n);
}

int swimInWater (vector<vector<int>>& grid) {

	int n = grid.size ();

	priority_queue<pos> pq;
	pq.push (pos (grid[0][0], 0, 0));

	vector<vector<int>> done (n, vi (n, -1));
	done[0][0] = grid[0][0];

	while (done[n - 1][n - 1] == -1) {
		auto p = pq.top ();
		pq.pop ();
		for (int i = 0; i < 4; i++) {
			int a = p.x + xo[i];
			int b = p.y + yo[i];
			if (isValid (a, b, n) && done[a][b] == -1) {
				int c = max (grid[a][b], p.val);
				pq.push (pos (c, a, b));
				done[a][b] = c;
			}
		}
	}

	return done[n - 1][n - 1];
}
