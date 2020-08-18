public class QuasiScientificNotation {

  private int sign = 1;
  private String mantissaLeftOfDecimal = "0";
  private String mantissaRightOfDecimal = "0";
  private int exponent = 0;

  private static final int LESS_THAN = -1;
  private static final int EQUAL = 0;
  private static final int GREATER_THAN = 1;

  protected QuasiScientificNotation(String s) 
      throws KMathException {
    if (s.toUpperCase().indexOf('E') >= 0) {
      parseScientificNotation(s);
    }
    else {
      parseFloatingPointString(s);
    }
  }

  private void parseScientificNotation(String s) 
      throws KMathException {
    String ws = s;
    char possibleSign = ws.charAt(0);
    switch (possibleSign) {
      case '+':
        ws = ws.substring(1);
        break;
      case '-':
        sign = -1;
        ws = ws.substring(1);
        break;
      default:
        break;
    }
    int dx = ws.indexOf('.');
    int ex = ws.toUpperCase().indexOf('E');
    switch (compare(dx,0)) {
      case LESS_THAN:
        mantissaLeftOfDecimal = ws.substring(0,ex);
        mantissaRightOfDecimal = "0";
        break;
      case EQUAL:
        mantissaLeftOfDecimal = "0";
        mantissaRightOfDecimal = ws.substring(0,ex);
        break;
      case GREATER_THAN:
        mantissaLeftOfDecimal = ws.substring(0,dx);
        mantissaRightOfDecimal = ws.substring(dx+1,ex);
        break;
    }
    try {
      exponent = Integer.parseInt(ws.substring(ex+1));
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath Exception: " + e.getMessage());
    }
    normalize();
  }

  private int compare(int val1, int val2) {
    if (val1 > val2)
      return GREATER_THAN;
    else if (val1 < val2)
      return LESS_THAN;
    else return EQUAL;
  }

  private void parseFloatingPointString(String s) {

    StringBuffer mlsb = new StringBuffer();
    StringBuffer mrsb = new StringBuffer();
    int ix = 0;
    boolean gotd = false;
    String ws = s;
    if (ws.startsWith("+")) {
      ix = 1; 
    }
    else if (ws.startsWith("-")) {
      sign = -1;
      ix = 1;
    }
    while (ws.charAt(ix) == '0') {
      ++ix;
    }
    for (;ix < ws.length(); ++ix) {
      if (ws.charAt(ix) == '.') {
        gotd = true;
      }
      else {
        if (mlsb.length() == 0) {
          if (ws.charAt(ix) != '0') {
            mlsb.append(ws.substring(ix,ix + 1));
          }
          if (gotd) {
            --exponent;
          };
        }
        else {
          if (!gotd) {
          ++exponent;
          }
          mrsb.append(ws.charAt(ix));
        }
      }
    }
    if (mrsb.length() == 0) {
      mrsb.append('0');
    }
    if (mlsb.length() == 0) {
      mlsb.append('0');
    }
    mantissaLeftOfDecimal = mlsb.toString();
    mantissaRightOfDecimal = mrsb.toString();
  }

  public void add (QuasiScientificNotation addend) 
      throws KMathException {
    this.normalize();
    addend.normalize();
    if (this.exponent != addend.exponent) {
      this.useExponent(addend.exponent);
    }
    if ((this.sign * addend.sign) < 0) {
      subtractLesserFromGreater(addend);
      return;
    }
    String rs = stringAddJustifiedLeft(this.mantissaRightOfDecimal, 
      addend.mantissaRightOfDecimal);
    long carryOver = 0l;
    if ((rs.length() > this.mantissaRightOfDecimal.length()) &&
        (rs.length() > addend.mantissaRightOfDecimal.length())) {
      carryOver = 1l;
      mantissaRightOfDecimal = rs.substring(1);
    }
    else {
      mantissaRightOfDecimal = rs;
    }
    long lsum = stringAdd(this.mantissaLeftOfDecimal, 
      addend.mantissaLeftOfDecimal);
    lsum += carryOver;
    mantissaLeftOfDecimal = Long.toString(lsum);
    normalize();
  }

  private void subtractLesserFromGreater(QuasiScientificNotation val) 
      throws KMathException {
    try {
      if (Long.parseLong(this.mantissaLeftOfDecimal) >
          Long.parseLong(val.mantissaLeftOfDecimal)) {
        QuasiScientificNotation diff =subtract(this,val);
        this.mantissaLeftOfDecimal = diff.mantissaLeftOfDecimal;
        this.mantissaRightOfDecimal = diff.mantissaRightOfDecimal;
        this.exponent = diff.exponent;
      }
      else if (Long.parseLong(val.mantissaLeftOfDecimal) >
               Long.parseLong(this.mantissaLeftOfDecimal)) {
        QuasiScientificNotation diff =subtract(val,this);
        this.mantissaLeftOfDecimal = diff.mantissaLeftOfDecimal;
        this.mantissaRightOfDecimal = diff.mantissaRightOfDecimal;
        this.exponent = diff.exponent;
        sign *= -1;
      }
      else {
        StringBuffer sb1 = new StringBuffer(this.mantissaRightOfDecimal);
        StringBuffer sb2 = new StringBuffer(val.mantissaRightOfDecimal);
        int len1 = sb1.length();
        int len2 = sb2.length();
        if (len1 > len2) {
          for (int i = len2; i < len1; ++i) {
            sb2.append('0');
          }
        }
        else if (len2 > len1) {
          for (int i = len1; i < len2; ++i) {
            sb1.append('0');
          }
        }
        for (int i = 0; i < sb1.length(); ++i) {
          if (sb1.charAt(i) > sb2.charAt(i)) {
            QuasiScientificNotation diff =subtract(this,val);
            this.mantissaLeftOfDecimal = diff.mantissaLeftOfDecimal;
            this.mantissaRightOfDecimal = diff.mantissaRightOfDecimal;
            this.exponent = diff.exponent;
            return;
          }
          else if (sb2.charAt(i) > sb1.charAt(i)) {
            QuasiScientificNotation diff =subtract(val,this);
            this.mantissaLeftOfDecimal = diff.mantissaLeftOfDecimal;
            this.mantissaRightOfDecimal = diff.mantissaRightOfDecimal;
            this.exponent = diff.exponent;
            sign *= -1;
            return;
          }
        }
        this.mantissaLeftOfDecimal = "0";
        this.mantissaRightOfDecimal = "0";
        this.exponent = 1;
      }
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  private QuasiScientificNotation subtract(QuasiScientificNotation v1,
      QuasiScientificNotation v2) throws KMathException {
    if (v1.exponent != v2.exponent) {
      v1.useExponent(v2.exponent);
    }
    try {
      long sl = Long.parseLong(v1.mantissaLeftOfDecimal) -
        Long.parseLong(v2.mantissaLeftOfDecimal);
      String sr = stringSubtractJustifiedLeft(v1.mantissaRightOfDecimal,
        v2.mantissaRightOfDecimal);
      long borrow = 0l;
      if (sr.startsWith("-")) {
        borrow = 1l;
        sr = sr.substring(1); 
      }
      QuasiScientificNotation qsn = 
        new QuasiScientificNotation(Long.toString(sl - borrow) + "." +
        sr + "E" + Integer.toString(v1.exponent));
      qsn.normalize();
      return qsn;
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  private boolean isAllZeroes(String s) {
    boolean tf = true;
    for (int i = 0; i < s.length(); ++i) {
      if (s.charAt(i) != '0') {
        tf = false;
        break;
      }
    }
    return tf;
  }

  private void normalize() {
    if ((isAllZeroes(mantissaLeftOfDecimal)) &&
        (isAllZeroes(mantissaRightOfDecimal))) {
      this.sign = 1;
      this.mantissaLeftOfDecimal = "0";
      this.mantissaRightOfDecimal = "0";
      this.exponent = 0;
      return;
    }
    int nzx = -1;
    for (int i = 0; i < mantissaLeftOfDecimal.length();++i) {
      if (mantissaLeftOfDecimal.charAt(i) != '0') {
        nzx = i;
        break;
      }  
    }
    StringBuffer sbl = new StringBuffer();
    StringBuffer sbr = new StringBuffer();
    if (nzx < 0) {
      for (nzx = 0; nzx < mantissaRightOfDecimal.length(); ++nzx) {
        --exponent;
        if (mantissaRightOfDecimal .charAt(nzx) != '0') {
          mantissaLeftOfDecimal = 
            mantissaRightOfDecimal.substring(nzx,nzx+1);
          if (nzx == (mantissaRightOfDecimal.length() -1)) {
            mantissaRightOfDecimal = "";
          }
          else {
            mantissaRightOfDecimal = 
              mantissaRightOfDecimal.substring(nzx+1);
          }
          break;
        }
      }
    }
    else { 
      if (nzx != (mantissaLeftOfDecimal.length() -1)) {
        mantissaRightOfDecimal = 
          mantissaLeftOfDecimal.substring(nzx+1) + 
          mantissaRightOfDecimal;
        exponent += mantissaLeftOfDecimal.length() - (nzx +1);
      }
      mantissaLeftOfDecimal = mantissaLeftOfDecimal.substring(nzx,nzx+1);
    }   
    StringBuffer rsb = new StringBuffer(mantissaRightOfDecimal);
    int rlen = rsb.length();
    for (int i = rlen - 1; i > 0; --i) {
      if (rsb.charAt(i) == '0') {
        --rlen;
      }
      else {
        break;
      } 
    }
    if (rlen < mantissaRightOfDecimal.length()) {
      rsb.setLength(rlen);
      mantissaRightOfDecimal = rsb.toString();
    }
  }

  private String stringAddJustifiedLeft(String s1, String s2) 
      throws KMathException {
    int len1 = s1.length();
    int len2 = s2.length();
    int lenMax = Math.max(len1,len2);
    try {
      long sum1 = Long.parseLong(s1);
      long sum2 = Long.parseLong(s2);
      if (len1 > len2) {
        for (int i = len2; i < len1; ++i) {
          sum2 *= 10l;
        }
      }
      else if (len2 > len1) {
        for (int i = len1; i < len2; ++i) {
          sum1 *= 10l;
        }
      }
      String sum12 = Long.toString(sum1 + sum2);
      StringBuffer sblp = new StringBuffer();
      for (int i = sum12.length(); i < lenMax; ++i) {
        sblp.append('0');
      }
      return sblp.append(Long.toString(sum1+sum2)).toString();
    }
    catch(NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  private String stringSubtractJustifiedLeft(String s1, String s2) 
      throws KMathException {
    int len1 = s1.length();
    int len2 = s2.length();
    int lenMax = Math.max(len1,len2);
    try {
      long val1 = Long.parseLong(s1);
      long val2 = Long.parseLong(s2);
      if (len1 > len2) {
        for (int i = len2; i < len1; ++i) {
          val2 *= 10l;
        }
      }
      else if (len2 > len1) {
        for (int i = len1; i < len2; ++i) {
          val1 *= 10l;
        }
      }
      StringBuffer sblp = new StringBuffer();
      if (val2 > val1) {
        long m = 1l;
        for (int i = 0; i < lenMax; ++i) {
          m *= 10l;
        }
        val1 += m;
        sblp.append('-');
      }
      String diff12 = Long.toString(val1 - val2);
      for (int i = diff12.length(); i < lenMax; ++i) {
        sblp.append('0');
      }
      sblp.append(diff12);
      return sblp.toString();
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  private long stringAdd(String s1, String s2) 
      throws KMathException {
    try {
      long sum1 = Long.parseLong(s1);
      long sum2 = Long.parseLong(s2);
      return sum1 + sum2;
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  public void subtract (QuasiScientificNotation subtrahend) 
      throws KMathException {
    if ((this.sign * subtrahend.sign) < 0) {
      subtrahend.sign *= -1;
      add(subtrahend);
      sign = -1;
    }
    else {
      this.normalize();
      subtrahend.normalize();
      if (this.exponent != subtrahend.exponent) {
        this.useExponent(subtrahend.exponent);
      }
      subtractLesserFromGreater(subtrahend);
    }
    normalize();
  }

  public void multiply (QuasiScientificNotation multiplier) 
      throws KMathException {
    try {
      this.normalize();
      multiplier.normalize();
      this.shiftDecimal(-1);
      multiplier.shiftDecimal(-1);
      long m1 = Long.parseLong(this.mantissaRightOfDecimal);
      long m2 = Long.parseLong(multiplier.mantissaRightOfDecimal);
      int nd = this.mantissaRightOfDecimal.length() +
        multiplier.mantissaRightOfDecimal.length();
      String m1m2 = Long.toString(m1 * m2);
      exponent = this.exponent + multiplier.exponent;
      sign = this.sign * multiplier.sign;
      if (m1m2.length() > nd) {
        mantissaLeftOfDecimal = m1m2.substring(0,1);
        mantissaRightOfDecimal = m1m2.substring(1);
        exponent += 1;
      }
      else if (m1m2.length() < nd) {
        mantissaLeftOfDecimal = "0";
        mantissaRightOfDecimal = "0" + m1m2;
      }
      else {
        mantissaLeftOfDecimal = "0";
        mantissaRightOfDecimal = m1m2;
      }
      normalize();
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  public void divide (QuasiScientificNotation dividend) 
      throws KMathException {
    try {
      this.normalize();
      dividend.normalize();
      if (("0".equals(dividend.mantissaLeftOfDecimal)) &&
          (isAllZeroes(dividend.mantissaRightOfDecimal))) {
        throw new KMathException("division by zero");
      }
      int lv1 = Math.abs(Integer.parseInt(this.mantissaLeftOfDecimal));
      int lv2 = Math.abs(Integer.parseInt(dividend.mantissaLeftOfDecimal));
      if (lv1 <= lv2) {
        shiftRight(1);
      }
      long val1 = Long.parseLong(this.mantissaLeftOfDecimal +
         this.mantissaRightOfDecimal + "0000");
      long val2 = Long.parseLong(dividend.mantissaLeftOfDecimal +
         dividend.mantissaRightOfDecimal);
      long adj = 1l;
      while (val1 <= val2) {
        val1 *= 10l;
        --exponent;
      }
      String result = Long.toString(val1/val2);
      this.mantissaLeftOfDecimal = result.substring(0,1);
      this.mantissaRightOfDecimal = result.substring(1);
      this.exponent -= dividend.exponent;
      sign = this.sign / dividend.sign;
      this.normalize();
    }
    catch (NumberFormatException e) {
      throw new KMathException("KMath exception: " + e.getMessage());
    }
  }

  public void useExponent(int newExponent) {
    if (newExponent == exponent) {
      return;
    }
    int adj = exponent - newExponent;
    shiftDecimal(adj);
  }

  public void shiftDecimal(int ct) {
    if (ct < 0) {
      shiftLeft(-ct);
    }
    else {
      shiftRight(ct);
    }
  }

  private void shiftLeft(int ct) {
    int lenLeft = mantissaLeftOfDecimal.length();
    int newLenLeft = lenLeft - ct;
    if (newLenLeft <= 0) {
      StringBuffer padding = new StringBuffer();
      for (int i = lenLeft; i < (ct + 1); ++i) {
        padding.append('0');
      }
      mantissaLeftOfDecimal = 
        padding.append(mantissaLeftOfDecimal).toString();
      lenLeft = mantissaLeftOfDecimal.length();
    }
    String strippedFromLeft = 
      mantissaLeftOfDecimal.substring(lenLeft - ct);
    mantissaRightOfDecimal = 
      strippedFromLeft + mantissaRightOfDecimal;
    mantissaLeftOfDecimal = 
      mantissaLeftOfDecimal.substring(0,lenLeft -ct);
    exponent += ct;
  }

  private void shiftRight(int ct) {
    int lenRight = mantissaRightOfDecimal.length();
    int newLenRight = ct + 1;
    if (newLenRight > lenRight) {
      StringBuffer padding = new StringBuffer();
      for (int i = 0; i < (newLenRight - ct); ++i) {
        padding.append('0');
      }
      mantissaRightOfDecimal = 
        mantissaRightOfDecimal + padding.toString();
      lenRight = mantissaRightOfDecimal.length();
    }
    String strippedFromRight = mantissaRightOfDecimal.substring(0,ct);
    mantissaLeftOfDecimal = mantissaLeftOfDecimal + strippedFromRight;
    mantissaRightOfDecimal = mantissaRightOfDecimal.substring(ct);
    exponent -= ct;
  }

  public String toString() {
    this.normalize();
    boolean isWholeNumber = false;
    int len = 0;
    if (sign < 0) {
      ++len;
    }
    switch (compare(exponent,0)) {
      case LESS_THAN:
        int absexp = Math.abs(exponent);
          len += absexp;
        len++;
        if (!isAllZeroes(mantissaRightOfDecimal)) {
          len += mantissaRightOfDecimal.length();
        }
        break;
      case EQUAL:
      case GREATER_THAN:
        len += mantissaLeftOfDecimal.length();
        len += exponent;
        if (!isAllZeroes(mantissaRightOfDecimal)) {
          ++len;
        }
        len += mantissaRightOfDecimal.length();
        break;
    }
    if (len > KMath.MAX_FIELD_WIDTH) {
      return this.asScientificNotation();
    }
    else if (isWholeNumber) {
      return this.asWholeNumber();
    }
    else {
      return this.asFloatingPoint();
    }
  }

  private String asScientificNotation() {
    return ((sign < 0) ? "-" : "") +mantissaLeftOfDecimal + 
      "." + mantissaRightOfDecimal +
      "E" + Integer.toString(exponent);
  }

  private String asFloatingPoint() {
    StringBuffer sb = new StringBuffer();
    if (sign < 0) {
      sb.append('-');
    }
    switch (compare(exponent,0)) {
      case LESS_THAN:
        sb.append(".");
        int exp = -exponent;
        for (int i = mantissaLeftOfDecimal.length(); i < exp; ++i) {
          sb.append('0');
        }
        sb.append(mantissaLeftOfDecimal);
        sb.append(mantissaRightOfDecimal);
        break;
      case EQUAL:
        sb.append(mantissaLeftOfDecimal);
        sb.append(".");
        sb.append(mantissaRightOfDecimal);
        break;
      case GREATER_THAN:
        sb.append(mantissaLeftOfDecimal);
        int lr = mantissaRightOfDecimal.length();
        switch(compare(exponent,lr)) {
          case LESS_THAN:
            sb.append(mantissaRightOfDecimal.substring(0,exponent));
            sb.append('.');
            sb.append(mantissaRightOfDecimal.substring(exponent));
            break;
          case EQUAL:
            sb.append(mantissaRightOfDecimal);
            break;
          case GREATER_THAN:
            sb.append(mantissaRightOfDecimal);
            for (int i = lr; i < exponent; ++i) {
              sb.append('0');
            }
            break;
        }
    }
    if (sb.charAt(sb.length()-1) == '.') {
      sb.deleteCharAt(sb.length() -1);
    }
    return sb.toString();
  }

  private String asWholeNumber() {
    StringBuffer sb = new StringBuffer();
    if (sign < 0) {
      sb.append('-');
    }
    sb.append(mantissaLeftOfDecimal);
    if ((mantissaRightOfDecimal.equals("0")) &&
        (exponent == 0)) {
      return sb.toString();
    }
    sb.append(mantissaRightOfDecimal);
    if (mantissaRightOfDecimal.length() < exponent) {
      for (int i = mantissaRightOfDecimal.length(); i < exponent; ++i) {
        sb.append('0');
      }
    }
    return sb.toString();
  }
}
