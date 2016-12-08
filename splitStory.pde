import java.io.*;
import java.net.*;  
import org.apache.commons.io.FileUtils;

class splitStory{
  String story, totalWords = "";
  String[] words;
  //BufferedReader scn;
  Scanner scn;
  File storyFile; 
  URL storyUFile;

  public splitStory(){
  }
  
  public String[] splitItUp(File f){
   /* storyFile = f;
    scn = createReader(storyFile);   
   try {   
    story = scn.readLine();
    //System.out.println(story);
  } catch (IOException e) {
    e.printStackTrace();
    story = null;
  }
    if (story == null) {
    // Stop reading because of an error or file is empty
    noLoop();  
   // scn.close();
  } else { 
    words = story.split("[\\W\\s]");
   // System.out.println(words);
  } 
  return words;
  }
  */
  storyFile = f;
      
   try {   
     scn = new Scanner(storyFile); 
     while(scn.hasNext()){
    story += " " + scn.next() ;
     }
    //System.out.println(story);
  } /*catch (IOException e) {
    e.printStackTrace();
    story = null;
  }*/
  catch (FileNotFoundException e) {
    e.printStackTrace();
    story = null;
  }
    if (story == null) {
    // Stop reading because of an error or file is empty
    noLoop();  
    //scn.close();
  } else { 
    words = story.split("[\\W\\s\\d\n_]");
   // System.out.println(words);
  } 
  return words;
  }
  
   public String[] splitItUp(URL uFile){
  storyUFile = uFile;
     try{
        URLConnection yc = storyUFile.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null) {
            totalWords += in.readLine();
            //System.out.println(inputLine);
        }
        words = totalWords.split("[\\W\\s\\d_]");
        in.close();
     }
     catch(IOException e){
    e.printStackTrace();
  }
 /* try{
   FileUtils.copyURLToFile(storyUFile, storyFile);
  }
  catch(IOException e){
    e.printStackTrace();
  }*/
   return words;
   }
   }