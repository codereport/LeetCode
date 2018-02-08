// code_report Solution
// https://youtu.be/AUGgowrZCNc?t=1m47s

bool canTransform (string start, string end) {

	string s, t;

	for (auto letter : start) if (letter != 'X') s += letter;
	for (auto letter : end)   if (letter != 'X') t += letter;

	if (s != t) return false;
	else {
		int sR = 0, sL = 0, eR = 0, eL = 0;
		FORI (0, start.size ()) {
			if (start[i] == 'L') sL++;
			if (start[i] == 'R') sR++;
			if (end[i]   == 'R') eR++;
			if (end[i]   == 'L') eL++;

			if (eR > sR) return false;
			if (sL > eL) return false;
		}
	}

	return true;
}
