public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public int startInd = 2;
public double digitNum;
public String digits;

public void setup()  
{            
    digits = e.substring(startInd,startInd + 10);
	digitNum = Double.parseDouble(digits);
	isPrime(digitNum);
}  
public void draw()  
{   

	if (isPrime(digitNum) == true) {
		System.out.println(digits);
		noLoop();
	}
	else {
		startInd++;
		digits = e.substring(startInd,startInd + 10);
		digitNum = Double.parseDouble(digits);
		isPrime(digitNum);
	}

}  
public boolean isPrime(double dNum)  
{   
 if (dNum <= 1) {
    return false;
  }
  else {
	  for (int i = 2; i <= Math.sqrt(dNum); i++) {
	    if (dNum % i == 0) {
	      return false;
	    }
	  }
  }
  return true; 
} 