import java.lang.Object;
import java.util.Arrays;
import java.util.*;

class toArrayList{
  String original[];
 ArrayList<String> newList; 
 public ArrayList intoArrayList(String a[]){
  original = a;
  newList = new ArrayList<String>(Arrays.asList(original));
  
  return newList;
 } 
  
  
  
}