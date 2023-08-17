// FOR LOOP SYNTAX

// for(INITIALIZATION; CONDITION; INCREMENT/DECREMENT){
// CODE
// }

// while(condition){

// }

// do{

// }
// while(condition);

// SYNTAX OF IF STATEMENT

// if(condition){}else{}

// ELIF STATEMENT

// if(condtion){}else if(){} else{}

// SWITCH CASE STATEMENT

// switch(test condition){case value1:{} break; case value2:{} break; default:{} break;}

void main() {
  String name = "Raman";
  int i = 0;
  for (int i = 0; i < 5; i++) {
    print(name);
    // First i=0
    // Then i=-1
    // Then i=-2
    // Then i=-3
  }

  while (i <= 10) {
    print(i);
    i++;
  }
  do {
    print(i);
    i++;
  } while (i < -1);

  int age = 17;
  if (age >= 18) {
    print("You are eligible to vote");
  } else {
    print("You are not eligible to vote");
  }

  if (age >= 21) {
    print("You are eligible to vote");
  } else if (age >= 18) {
    print(
        "You are eligible for the vote please choose the candidate by doing proper research");
  } else {
    print("You are not eligible to vote");
  }

  int number = 2;

  switch (number) {
    case 1:
      {
        print("This is a number 1");
      }
      break;
    case 2:
      {
        print("This is a number 2");
      }
      break;
    case 3:
      {
        print("This is a number 3");
      }
      break;

    default:
      {
        print("This is a number ${number}");
      }
  }
}
