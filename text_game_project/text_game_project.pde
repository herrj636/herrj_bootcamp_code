int state, counter;
PImage welcome;

void setup(){
  size(600, 600);
  welcome = loadImage("welcomeslide.png");
  println("Welcome to The White House.");
  println("Press the space key to begin.");
  println("  ");
  println("  ");
  println("  ");
}

void draw(){
  background(0);
  image(welcome, 0, 0, 600, 600);
}

void keyPressed(){
  if (key == ' ') {
  welcome = loadImage("staff.png");
  image(welcome, 0, 0, 500, 500);
  println("Choose your staff member.");
  println("Spicer (a), Sessions (b), Preibus (c)");
  println("  ");
  println("  ");
  println("  ");
  }
  
  else if (key == 'a' || key == 'A'){
  welcome = loadImage("spicer.png");
  image(welcome, 0, 0, 500, 500);
  println("You've been appointed by the President as his Comms Director. Yay...");
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
  
  if (key == 'q' || key == 'Q') {
  welcome = loadImage("tweet.png");
  image(welcome, 0, 0, 500, 500);
  println("Oh, no! The President has tweeted a controversial statement!");
  println("He orders you to talk to the media. Do you:");
  println("  ");
  println("(Z) Deny that the President was wrong and claim alternative facts are a thing.");
  println("(X) Agree that the President was completely wrong.");
  }
  
  else if (key == 'w' || key == 'W'){
  welcome = loadImage("russia.png");
  image(welcome, 0, 0, 500, 500);
  println("Oh, no! The news are saying the administration colluded with russia.");
  println("Do you want to appoint a Special Prosecutor?");
  println("  ");
  println("(Y) Yes! Let's get to the bottom of this.");
  println("(X) No! Who's Russia?");
  }
  
  else if (key == 'e' || key == 'E'){
  welcome = loadImage("immigration.png");
  image(welcome, 0, 0, 500, 500);
  println("  ");
  println("The President has banned travel from 6 predominantly Muslim countries. But the order has been sued!");
  println("How will you defend this in court?");
  println("  ");
  println("(O) Out: Our security is at risk! Immigrants hurt our country :(");
  println("(I) In: Agree that it's unconstitutional to ban people based on their religion.");
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
}