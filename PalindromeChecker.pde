public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

  if(reverse(word).equals(normal(word))){
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >=0; i--){
      if(Character.isLetter(str.charAt(i))){

      sNew += str.charAt(i);
      }
    }
    return sNew.toLowerCase();
}
public String normal(String str)
{
    String rawr = new String();
    for(int i = 0; i <str.length(); i++){
      if(Character.isLetter(str.charAt(i))){

      rawr += str.charAt(i);
      }
    }
    return rawr.toLowerCase();
}



