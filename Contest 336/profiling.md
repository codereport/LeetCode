
### Profiling

| Language |                       Command                        |         Time          |
| :------: | :--------------------------------------------------: | :-------------------: |
|   BQN    | `1000 MaxScore •_timed ¯75000 + 1e5 •rand.Range 1e5` |    0.001527410649     |
|  Python  |                     see below ⬇️                      | 0.0019180587481008843 |

```py
# Python timing
import timeit

data = [-75000 + r.randint(0, int(1e5)) for i in range(int(1e5))]

timeit.timeit(lambda: maxScore(data), number=1000)
```
