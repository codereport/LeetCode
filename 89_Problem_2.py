# code_report
# https://youtu.be/H5w6doOXz10

def carFleet(self, target, position, speed):
   times = [float(target - p) / s for p, s in sorted(zip(position, speed))]
   fleets = last_time = 0
        
   for time in times[::-1]:
      if time > last_time:
            fleets += 1
            last_time = time
                
   return fleets
