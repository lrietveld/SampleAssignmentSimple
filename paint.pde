import java.io.*;
import java.lang.String;

class paint{
  ArrayList<String> theWords;
  ArrayList<word> wordObjects = new ArrayList<word>();
  int w = 0, h = 0, hIncrement = 30, wIncrement = 30;
  word wordClass = new word();
  BufferedReader commonW;
  String commons, mfw;
  String[] commonArray;
  File removeWords;
   
 public paint(){
   
 }
 public void makeCommonArray(File f){
   removeWords = f;
         commonW = createReader(removeWords);
       //contains a list of common three and four letter words separated by commas
       try {
    commons = commonW.readLine();
    //System.out.println(story);
  } catch (IOException e) {
    e.printStackTrace();
    commons = null;
  }
    if (commons == null) {
    // Stop reading because of an error or file is empty
    noLoop();  
  //  scn.close();
  } else {
   // commonArray = commons.split(", ");
   commonArray = commons.split(", ");
  }  
 // System.out.println(commonArray);
 }
 public void putArray(ArrayList<String> list){
  theWords = list;
   /* 
   for(int i = 0; i < theWords.size(); i++){
      word thatSpot = new word(theWords.get(i));
      int index = wordObjects.indexOf(thatSpot);
      if(index>=0){
        //if it's already in the object array
        wordObjects.get(index).oneMore();
      } else if(theWords.get(i).length()>=3){
        //eleminate if less than three letters
      wordObjects.add(new word(theWords.get(i)));
      } 
      */
    //   wordObjects.add(new word("google"));
   /* for(word w: wordObjects){
      if(w.getWord()==(null)){
        wordObjects.remove(w);
      }*/
     /* for(int i = 0; i < theWords.size(); i++){
        if(theWords.get(i).equals(null)){
          
        } else{
       wordObjects.add(new word((theWords.get(i)).toLowerCase())); 
      }
      }*/
    //  System.out.println(wordObjects.toString());
    for(int i = 1; i < theWords.size(); i++){
       //println(theWords.get(i)+"Test");
        if(theWords.get(i)==(null)){ 
        } else{
       wordObjects.add(new word((theWords.get(i)).toLowerCase())); 
      }
      }
      for(int j = wordObjects.size()-1; j>=0; j--){
        for(int k = j-1; k >= 0; k--){
        if(wordObjects.get(k).equals(wordObjects.get(j))){
          wordObjects.get(j).oneMore();
         wordObjects.remove(k); 
         j--;
        } 
      }
       wordObjects.get(j).oneMore(); 
      }
      for(int c = 0; c < commonArray.length; c++){
        for(int w = wordObjects.size()-1; w >= 0; w--){
          if((wordObjects.get(w).getWord()).equalsIgnoreCase(commonArray[c])){
            wordObjects.remove(w);
          }
        }
      }
     // System.out.println(wordObjects.toString());
      // System.out.println("\n\nREMOVE NULLLLL!\n\n");
      /* for(int f = wordObjects.size()-1; f >= 0; f--){
          if(wordObjects.get(f)==null){
            wordObjects.remove(f);
          }
       }*/
      /* for(int f = 0; f < wordObjects.size(); f++){
          if(wordObjects.get(f)==null){
            wordObjects.remove(f);
          }
       */
       Iterator<word> itW = wordObjects.iterator();
    while(itW.hasNext()){
     word w = itW.next();
     println(w.getWord());
     if(w.getWord()==null||w.getWord().length()<3){
       itW.remove();
     }
    }
      Collections.sort(wordObjects);
     // System.out.println("\n \n \n after sort \n \n \n");
     System.out.println(wordObjects.toString());
    }
     public String mostFrequentWord(int spot){
         mfw = "you failed";
        if(mfw.equals(null)){
             return "it didn't work";
          }
        if(spot<wordObjects.size()){
         mfw = wordObjects.get(spot).getWord();
        } 
          return mfw;  
  }
  public int getImageSize(){
  /*int wordIndex = wordObjects.indexOf(new word("Project"));
   if(wordIndex!=-1){
    w=wordObjects.get(wordIndex).getCount();
    System.out.println(wordObjects.get(wordIndex));
   }   
 return w;
 */
  /*for(int s = 0; s<wordObjects.size(); s++){
    w = wordObjects.get(s).getCount();
  }
  */
  // w = wordObjects.get(1).getCount();
 // System.out.println((int)((new word(mostFrequentWord()).getCount())*50));
 //return (int)((new word(mostFrequentWord()).getCount())*50);
 return 100;
 }
  public void autoImage(ArrayList<String> list){
   theWords = list;
    for(int i = 0; i < theWords.size(); i++){
  if (theWords.get(i).equalsIgnoreCase("Skunk")){
    w+=wIncrement;
    h+=hIncrement;
  }
  }
 // image(skunk, 0, 0, w, h);  
 } 
}