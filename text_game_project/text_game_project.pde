PImage welcome;

void setup(){
  size(600, 600);
  welcome = loadImage("welcomeslide.png");
  println("Welcome to The White House.");
  println("Press the space key to begin.");
  println("  ");
  println("  ");
  println("  ");
  println("  ");
}

void draw(){
  background(0);
  image(welcome, 0, 0, 600, 600);
}
//Level 1
void keyPressed(){
  if (key == ' ') {
  welcome = loadImage("staff.png");
  image(welcome, 0, 0, 500, 500);
  println("Choose your staff member.");
  println("Spicer (a), Sessions (b), Flynn (c)");
  println("  ");
  println("  ");
  println("  ");
  }
  
  else if (key == 'a' || key == 'A'){
  welcome = loadImage("spicer.png");
  image(welcome, 0, 0, 500, 500);
  println("You've been appointed by the President as his Communications Director. Yay...");
  println("  ");
  println("Press Q to continue.");
  println("  ");
  println("  ");
  }
  
  else if (key == 'b' || key == 'B'){
  welcome = loadImage("sessions.png");
  image(welcome, 0, 0, 500, 500);
  println("  ");
  println("The Senate has confirmed you as Attorney General.");
  println("Welcome, chaos awaits you.");
  println("  ");
  println("Press W to continue.");
  println("  ");
  println("  ");
  }
  
  else if (key == 'c' || key == 'C'){
  welcome = loadImage("flynn.png");
  image(welcome, 0, 0, 500, 500);
  println("Nostrovia, comrade! You've been appointed National Security Advisor.");
  println("Welcome to the Kremlin! ...I mean White House :P");
  println("  ");
  println("Press E to continue.");
  println("  ");
  println("  ");
  }
  //Level 2
  if (key == 'q' || key == 'Q') {
  welcome = loadImage("tweet.png");
  image(welcome, 0, 0, 500, 500);
  println("Oh, no! The President has tweeted a controversial statement!");
  println("He orders you to talk to the media. Do you:");
  println("  ");
  println("(Z) Deny that the President was wrong and claim that alternative facts are a thing.");
  println("(X) Agree that the President was completely wrong.");
  println("  ");
  }
  
  else if (key == 'w' || key == 'W'){
  welcome = loadImage("russia.png");
  image(welcome, 0, 0, 500, 500);
  println("Oh, no! The news are saying the administration colluded with Russia to rig the elections.");
  println("Do you want to appoint a Special Prosecutor?");
  println("  ");
  println("(y) Yes! Let's get to the bottom of this.");
  println("(n) No! Who's Russia?");
  }
  
  else if (key == 'e' || key == 'E'){
  welcome = loadImage("immigration.png");
  image(welcome, 0, 0, 500, 500);
  println("  ");
  println("The President has banned travel from 6 predominantly Muslim countries. But the order has been sued! How will you defend this in court?");
  println("  ");
  println("(O) Out: Our security is at risk! Immigrants hurt our country :(");
  println("(I) In: Agree that it's unconstitutional to ban people based on their religion.");
  println("  ");
}
  //Level 3
  else if (key == 'z' || key == 'Z'){
  welcome = loadImage("trumpkiss.png");
  image(welcome, 0, 0, 500, 500);
  println("GREAT! Thanks for defending the President's crazy tweet, but you have now become too famous and that makes him jealous.)!");
  println("You're fired, friend! You Are Not America's Next Top Model.");
  println("  ");
  println("Game Over.");
  println("  ");
  }
  
  else if (key == 'x' || key == 'X'  || key == 'i' || key == 'I'){
  welcome = loadImage("trump.png");
  image(welcome, 0, 0, 500, 500);
  println("What are you doing? You have embarrased the President (not that he hasn't done that already...)!");
  println("Pack your stuff, amigo, you've been fired!");
  println("  ");
  println("Game Over");
  println("  ");
  }

  else if (key == 'o' || key == 'O'){
  welcome = loadImage("communistparty.png");
  image(welcome, 0, 0, 500, 500);
  println("Great! But it doesn't really matter. You've been linked to colluding with the Russians, and the President is forced to fire you.");
  println("  ");
  println("You'll probably have to leave the country. But no worries, there are some pretty good parties in Russia! Game Over.");
  println("  ");
  }
  
  else if (key == 'y' || key == 'Y'){
  welcome = loadImage("robert_mueller.png");
  image(welcome, 0, 0, 500, 500);
  println("Damn, the DOJ has brought Robert Mueller. The President is not happy at all.");
  println("  ");
  println("I wouldn't get too settled in your office");
  println("  ");
  }
  
 else if (key == 'n' || key == 'N'){
  welcome = loadImage("senate.png");
  image(welcome, 0, 0, 500, 500);
  println("Not asking for a special prosecuter has turned the Senate against you.");
  println("  ");
  println("The President will likely fire you in the afternoon. sooorryyy. Game Over. :(");
  println("  ");
  }
}