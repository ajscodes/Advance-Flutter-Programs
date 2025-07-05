class LivingThing {
  int? numberOfLeg;
  int? numberOfHand;
  bool? canTalk;

  void displayDetails() {
    if (canTalk == true) {
      print('I can talk.');
    } else {
      print("I can't talk.");
    }

    print('I have $numberOfHand hands');
    print('I have $numberOfLeg legs');
  }
}

class Animal extends LivingThing {
  void setInformation() {
    numberOfLeg = 4;
    numberOfHand = 0;
    canTalk = false;
  }
}

class Person extends LivingThing {
  void setInformation() {
    numberOfLeg = 2;
    numberOfHand = 2;
    canTalk = true;
  }
}

void main(){
  Animal cow = Animal();
  Person joy = Person();

  cow.setInformation();
  print('--Animal Details--');
  cow.displayDetails();
  print('');

  joy.setInformation();
  print('--Person Details--');
  joy.displayDetails();
}