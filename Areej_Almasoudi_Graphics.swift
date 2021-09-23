import Foundation

 
struct Point {
    
    var X : Double
    var Y : Double
}

struct Line {
    
    var Start : Point
    var End : Point
    
    func Length() -> Double {
        let length : Double = sqrt(pow(End.X - Start.X,2) + (pow(End.Y - Start.Y,2)))
        return length
    }
}

struct Triangle{
    var Points : [Point]
    
    func area() -> Double {
        let area : Double = 0.5*( (Points[0].X*(Points[1].Y-Points[2].Y)) + (Points[1].X*(Points[2].Y-Points[0].Y)) + (Points[2].X*(Points[0].Y-Points[1].Y)) )
        return area
    }
}

