
class word implements Comparable<word>{
  
  String word;
  int count;
  word wordComparing;
  
  public word(){
    this.count = 0;
    this.word = "";
  }   
 public word(String w){
   setWord(w);
  }    
  public void setWord(String w){
    word = w;
  }
  public void setCount(int c){
    count = c;
  }
  public void oneMore(){
    //For each instance of the word the count goes up
    count++;  
  }
  public String getWord(){
   
   return word; 
  }
  public int getCount(){

   return count; 
  }
  public int compareTo(word compareWord){
    if((this.getCount())>(compareWord.getCount())){
     return -1; 
    }
    else if((this.getCount())<(compareWord.getCount())){
     return 1; 
    }
    return 0;
  }
  
  public String toString(){
   
   return word; 
  }
  public boolean equals(word wC){
   wordComparing = wC;
   
   if(this.getWord().equals(wordComparing.getWord())){
     return true;
   }
   return false;
  }
  
}