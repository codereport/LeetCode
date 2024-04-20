### Solutions

|     Language     |                             Solution                             |
| :--------------: | :--------------------------------------------------------------: |
|    Dyalog APL    |                         `{+/\|2-/⎕UCS⍵}`                         |
|       BQN        |                     `` {+´\|-´˘2↕'a'-˜𝕩} ``                      |
|      Jello       |                       `ord deltas abs sum`                       |
|  Python + NumPy  |           `np.sum(np.abs(np.diff(list(map(ord, s)))))`           |
| Python + Dovekie |         `sum(map(b1(abs, psi(op.sub, ord)), s[1:], s))`          |
|      Python      | `sum(map(abs, map(op.sub, list(map(ord, s))[1:], map(ord, s))))` |