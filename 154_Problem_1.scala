// code_report

def maxNumberOfBalloons(text: String): Int = {
    return "balon".toList.zip(List(1,1,2,2,1)) 
                  .map(p => text.count(_ == p._1) / p._2)
                  .min;
}
