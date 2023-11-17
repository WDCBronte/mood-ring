//setup messages and font
PFont f;
String welcome  = "Welcome To Mood Ring!";
String step1 ="Press 1........... Instuctions";
String step2 ="Press 2........... To Begin";
int [] indexno = {0, 1, 2, 3, 4}; // Branch 1
int [] indexyes = {0, 1, 2, 3, 4}; 
int countno = 0;
int countyes = 0;
int branch1 = 1;
int branch2 = 1;
int branch3 = 0;
int branch4 = 0;
int branch5 = 0;
int branch6 = 0;
int branch7 = 0;





void setup() {
  size(600, 400);
  f = createFont("Bodoni 72 OldStyle", 20, true);
  background (255, 182, 193);
  fill (255);
  textFont(f);
  text(step1, width/2 - 100, 200);
  text(step2, width/2 - 100, 300);
  textAlign(CENTER);
  text(welcome, width /2, height/2 -90);
}

//Print Menu Welcome
void draw() {
  //begin instructions
  if (key == '1') {
    instruction();
  }
  //begin and ask question 1
  if (key == '2') {
    question1();
  }
  //Question 1  no count = 1, yes count = 0 move to Question 2
  ///////////Branch 1 no/////////
  if (countno == 1 && countyes == 0 && branch1 == 1) {                 //question 2 yes/no
    question2(); 
    branch1=2;
  
  }
  //question 2 Yes or No
  //if question 2 = No   to question 3
  if (countno == 2 && countyes == 0 && branch1 == 2 ) {               //  question 2 no
    question3();
    
  }
  //question 3 yes
  //if question 3 = yes to indigo
  if (countno == 2 && countyes == 1 && branch1 == 2 ) {                // question 3 Yes
    calc();
  }
  if (index == 2 && countno == 2 && countyes == 1 && branch1 == 2) {
    background (255);
    fill(0);
    indigoau();
    text("You have the Indigo Aura! You're curious, gentle and spiritually connected!", width/2, 360);
  }
  //question 3 No
  //if question 3 = no to green                                        //question 3 No
  if (countno == 3 && countyes == 0 && branch1 == 2 ) {
    calc();
  }
  if (index == 2 && countno == 3 && countyes == 0 && branch1 == 2) {
    background (255);
    fill(0);
    greenau();
    text("You have the Green Aura! You're social, communicative and nurturing!", width/2, 360, 360);  
  }

   //question 2 yes
  //if question 2 = yes  to question 4
  if (countno == 1 && countyes == 1 && branch1 == 2) {                                //question 2 yes
    question4();
    branch1 = 3;
  }
  //question 4 yes 
  //if question  = yes go to colour
  if (countno == 1 && countyes == 2 && branch1 == 3 ) {                              //question 4 yes
    calc();
  }
  if (index == 2 && countno == 1 && countyes == 2 && branch1 == 3) {
    background (255);
    fill(0);
    pinkau();
    text("You have the Pink Aura! You're generous, loving and sensitive!", width/2, 360);
  }
  //question 4 No
  //if question 4 no go to colour
  if (countno == 2 && countyes == 1 && branch1 == 3) {                                //question 4 no
    calc();
  }
  if (index == 2 && countno == 2 && countyes == 1 && branch1 == 3) {
    background (255);
    fill(0);
    orangeau();
    text("You have the Orange Aura! You're Adventurous, thoughtful and considerate!", width/2, 360, 360);
  }


//Question 1  no count = 0, yes count = 1 move to Question 2
////////////Branch 2 yes //////////


 if (countno == 0 && countyes== 1 && branch1 == 1) {           //question 5 yes or no
    question5(); 
     branch2 = 3;
  }
  //question 5 Yes or No
  //if question  = No   to question 6
  if (countno == 1 && countyes == 1 && branch2 == 3 ) {       //question 5 no 
    question6();
    branch2 = 5;
   
  }
  //question 6 yes
  //if question 6 = yes to colour                             
  if (countno == 1 && countyes == 2 && branch2 == 5 ) {      //question 6 yes
    calc();
  }
  if (index == 2 && countno == 1 && countyes == 2 && branch2 == 5) {
    background (255);
    fill(0);
    purpleau();
    text("You have the Purple Aura! You're wise, intellectual and independent!", width/2, 360);
  }
  //question 6 No                                              //question 6 no
  //if question 6 = no to colour
  if (countno == 2 && countyes == 1 && branch2 == 5 ) {
    calc();
  }
  
  if (index == 2 && countno == 2 && countyes == 1 && branch2 == 5) {
    background (255);
    fill(0);
    yellowau();
    text("You have the Yellow Aura! You're creative, relaxed and friendly!", width/2, 360);
  }
 
  //question 5 Yes 
  //if question  = yes  to question 7
  if (countno == 0 && countyes == 2 && branch2 == 3 ) {       //question 5 yes 
    question7();
    branch2 = 6;
  
  }
  //question 7 yes
  //if question 7 = yes to colour                             
  if (countno == 0 && countyes == 3 && branch2 == 6 ) {      //question 7 yes
    calc();
  }
  if (index == 2 && countno == 0 && countyes == 3 && branch2 == 6) {
    background (255);
    fill(0);
    blueau();
    text("You have the Blue Aura! You're Intuitive, calm and a freethinker", width/2, 360);
  }
  //question 7 No                                              //question 7 no
  //if question 7 = no to colour
  if (countno == 1 && countyes == 2 && branch2 == 6 ) {
    calc();
  }
  
  if (index == 2 && countno == 1 && countyes == 2 && branch2 == 6) {
    background (255);
    fill(0);
    redau();
    text("You have the Red Aura! You're well-grounded, energetic and Strong willed!", width/2, 360);
  }
}






// For key input for No and yes counters incremented for yes and no  (branch 1)

void keyPressed() {
  if (key == 'n' && countno < 4) {
    countno = indexno[countno];
    countno = countno + 1;
  }
  if (key == 'y' && countyes < 4) {
    countyes = indexyes[countyes];
    countyes = countyes + 1;
  }
}
