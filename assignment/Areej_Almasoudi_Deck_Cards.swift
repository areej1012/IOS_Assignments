import Foundation
import Glibc
//task 1 Create a struct called "Card"
struct Card{ 
var Color : Colors = .Blue
var Roll : Int = 0
 init (color : Colors){
     //Matching Enumeration Values and Set the number of Roll by color
     self.Color = color
switch color {
case .Red:
    self.Roll = Int.random(in : 3...4)
    
case .Blue:
    self.Roll = Int.random(in : 1...2)
     
case .Green:
    self.Roll = Int.random(in : 4...6)
     
 }
}
}
// enumeration type
enum Colors  {
    case Red
    case Blue
    case Green
}
//take 2 
class Duck{
    var cards : [Card] = []
    
    init(){
    for _ in 1...10{
        self.cards.append(Card(color: Colors.Blue))
        self.cards.append(Card(color: Colors.Red))
        self.cards.append(Card(color: Colors.Green))
        
    }
        
    }
    
    func deal() -> Card{
    let card = self.cards.remove(at : 0)
        return card
    }
    
    func isEmpty() -> Bool  {
        return cards.isEmpty
    }
    
    func shuffle(){
        self.cards = self.cards.shuffled()
    }
}

//task 3
class Player{
    var name : String = ""
    var hand : [Card] = []
    
    func draw(duck : Duck) -> [Card] {
    for i in 0..<duck.cards.count{
        hand.append(duck.cards[i])
    }
        return hand
    }
    
    func rollDice () -> Int{
        return Int.random(in: 1...6)
    }
    //change String to Colors Type
    func matchingCards (color : Colors , num : Int) -> Int{
    var count = 0
        for i in 0..<hand.count{
            if self.hand[i].Color == color && self.hand[i].Roll == num{
                count+=1
            }
        }
        return count
    }
}