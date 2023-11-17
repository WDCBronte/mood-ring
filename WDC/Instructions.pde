String instructions  = "Welcome to Mood Ring! the interactive game that develops your aura at your fingertips! Your Aura is a unique image that depicts your energy or mood through colour! To play you will be asked a serious of Yes or No questions; to answer Yes press lowercase 'y' on your keyboard and to answer No press lowercase 'n'.Answer honestly to develop your current Aura!";

String begin= "To begin press 2";

void instruction()
{
   

    fill(255);
    background (173,216,230);
    text(instructions, 40, 40, 500, 320);  // Text wraps within text box
    
    text(begin, width/2 , 300);
    textFont(f);
    textAlign(CENTER);
    
  
}
