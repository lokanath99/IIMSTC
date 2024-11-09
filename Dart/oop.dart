

// class Data<T> {
//   T data;
//   Data(this.data);
// }

class Car{
  int? year;
  String? color;

  Car(this.year, this.color);

  void displayDetails(){
    print("color: ${this.color}\nyear: ${this.year}");
  }
}


void main(){
 Car c1 = Car(2000, 'Red');
 Car c2 = Car (2001, "green");
 Car c3 = Car (2002, "blue");
 Car c4 = Car (2005, "yellow");

 List<Car> cl = [c1,c2,c3,c4];
 Collection<Car> coll = Collection("Test Catelog", cl);
 print(coll.rondomCarGenerator().color);
 print(coll.rondomCarGenerator().year);

}

class Collection<T> {
  String name;
  List<T> catelogs;

  Collection(this.name, this.catelogs);

  T rondomCarGenerator(){
    catelogs.shuffle();
    return catelogs[0];
  }

}

// class IntDat {
//   int data;
//   IntDat(this.data);
// }

// class DoubleDat {
//   double data;
//   DoubleDat(this.data);
// }


// //inheritance



// class Volvo extends Car{
//   int? saftyRating;

//   Volvo(this.saftyRating, super.year, super.color);

//   @override
//   void displayDetails(){
//     print("saftyRating: ${this.saftyRating}");
//     super.displayDetails();
//   }
// }

// class Line{
//   final int x;
//   final int y;

//   const Line(this.x, this.y);
  
//   void display(){
//     print(" line is on ${x} and ${y}");
//   }

// }


// class 
// property 
// method
// class Car{
//   // property 
//   String? color;
//   int? seater;
//   String? fuel;

//   // Car(String c, int s, String f){
//   //   this.color = c;
//   //   this.seater = s;
//   //   this.fuel = f;
//   // }

//   Car(this.color, this.fuel, [this.seater = 4]);
//   Car.namedParameterConst({required this.color, required this.seater, this.fuel = 'petrol'});
//   Car.namedParameterConst2({required this.color, required this.seater, this.fuel = 'petrol'});

//   // method
//   void accelerate(){
//     print("vrom vrom ... ");
//   }

//   void diplayCar(){
//     print("color: ${this.color} \n Seater: ${this.seater}\n fuel: ${this.fuel}");
//   }

//   void slowDown(){
//     print("skeeksssssshhh.... ");
//   }
// }