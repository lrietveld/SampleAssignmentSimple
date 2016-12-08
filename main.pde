//Laura Rietveld 
//ACS2016-17 Data Viz Project

import java.util.*;
import java.io.*;
//import com.google.Gson;
//import google-api-client-1.22.0.jar;
import at.mukprojects.imageloader.*;
import at.mukprojects.imageloader.google.*;
import at.mukprojects.imageloader.image.*;
import java.net.URL;
import java.lang.Object;
import java.net.MalformedURLException;

String apiKey = "apiKey";
ImageLoader loader;
ImageList list;
Image img;

ArrayList<String> theWords;
toArrayList tal = new toArrayList();
paint p = new paint();
splitStory ss = new splitStory();
//UrlValidator urlValidator = new UrlValidator();
int click = 0;
 
void setup(){
  ImageLoader loader = new GoogleLoader(this, apiKey);
  //background();
  size(800, 600);
  surface.setResizable(true);
  theWords = tal.intoArrayList(ss.splitItUp(new File("toadTest.txt")));
 /* try {
     theWords = tal.intoArrayList(ss.splitItUp(new URL("http://www.gutenberg.org/cache/epub/2225/pg2225.txt")));
    } catch (MalformedURLException  malformedURLException) {
     malformedURLException.printStackTrace();
    } */
  p.makeCommonArray(new File("commonWords.txt"));
  p.putArray(theWords);
  list = loader.start(p.mostFrequentWord(1)/*+" png"*/, true, 60 * 100);
}
void draw(){
//PImage toad = loadImage("http://animal-dream.com/data_images/toad/toad4.jpg");
//PImage skunk = loadImage("http://images.northrup.org/picture/xl/skunk/baby-skunk%20(18).jpg");
//image(toad, 0, 0, p.getImageSize(), p.getImageSize());
//image(toad, 0, 0, 5, 5);
//UrlValidator urlValidator = new UrlValidator(img.getImg()); 
//list = loader.start(p.mostFrequentWord(click)/*+" png"*/, true, 60 * 100);
 if(keyPressed==true){
   list.clearList();
   list = loader.restart(p.mostFrequentWord(click)/*+" png"*/, true, 60 * 100);
   click++;
   img = list.getRandom(); 
 }
 if (img == null||img.getImgUrl() == null) {
  img = list.getRandom(); 
  } else {
  // img = list.get(0);
  /* try {
        new URL(img.getImgUrl());
    } catch (MalformedURLException  malformedURLException) {
        malformedURLException.printStackTrace();
    }*/
   image(img.getImg(), 0, 0, width, height);
   //image((list.getImage(0)).getImg(), 0, 0, width, height);
  // image((list.getMostRecentImage()).getImg(), 0, 0, width, height);
  }
 // img = list.getRandom();
 // if(keyCode == UP){
 // img = list.getRandom();
 // }
  /*ImageSearcher searcher = new google.search.customSearchControl.getImageSearcher();
searcher.setRestriction(
  google.search.Search.RESTRICT_SAFESEARCH,
  google.search.Search.SAFESEARCH_STRICT
);
searcher.setRestriction(
  google.search.customSearchControl.getImageSearcher.RESTRICT_IMAGESIZE,
  google.search.customSearchControl.getImageSearcher.IMAGESIZE_MEDUIM
);
searcher.setRestriction(
  google.search.customSearchControl.getImageSearcher.RESTRICT_COLORFILTER,
  google.search.customSearchControl.getImageSearcher.COLOR_RED
);
searcher.execute(keyword);
 */
}
void mousePressed() {
  //list = loader.start(p.mostFrequentWord(click)/*+" png"*/, true, 60 * 100);
  click++;
 // list = loader.restart(p.mostFrequentWord(click)/*+" png"*/, true, 60*1000);
  //list = loader.start(p.mostFrequentWord(click)/*+" png"*/, true, 60 * 100);
 // img = list.getRandom();
}
