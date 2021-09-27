import Foundation
import Glibc
//task 1 Create a class called "Animal"
class Animal{
    var name : String 
    var health : Int
    
    init( name : String , health : Int = 100){
        self.name = name
        self.health = health
    }
    
    func displayHealth(){
        print("The health of anime is \(health)")
    }
}

//task 2
class Cat : Animal{

 init (name : String ){
super.init(name : name , health : 150)
    
}
   func growl(){
        print("Rawr!")
    }
    func run(){
        print("Running")
        super.health-=10
    }
}

class Cheetah : Cat{

override func run(){
    print("Running Fast")
    if super.health >= 50{
        super.health-=50
        
    }
}
func sleep(){
// if the health not equql 200
  if super.health != 200{
 // if the the difference bigger than or equl 50
  if 200 - super.health >= 50 {
      super.health+=50
      print("less \(super.health)")
  }
  // if the the difference less than 50
  else {
  // The difference between 200 and the current health to be added to the extent that it reaches 200
  let Healths = 200 - super.health
      super.health+=Healths
  }
  }
}
    
}

class Lion : Cat{
 override init( name : String){
super.init(name: name )
super.health = 200
    
}
    override func growl(){
        print("ROAR!!!! I am the King of the Jungle")
    }
}

var cheetah = Cheetah(name: "Cheetah")
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.run()
cheetah.displayHealth()
var lion = Lion(name: "Lion")
lion.run()
lion.run()
lion.run()
lion.growl()

