public class Employee : IPrintable{
    public var name: String
    public var  age: Int
    public var v: Vehicle? // optional
    
    
//    func setAge(pAge: Int) {
//        if pAge >= 0 {
//           age = pAge
//        } else {
//            age = 0
//        }
//    }
//    
//    func getAge() -> Int {
//        return self.age
//    }
    
    //empty constructor for employee name age and v (vehicle)
    init() {
        name = ""
        age = 0
        v = nil
    }

    //constructor for employee
    init (_ pName: String,_ pAge: Int) {
        name = pName
        age = pAge
        v = nil
    }
    
    //employee constructor that has vehicle
    init (_ pName: String,_ pAge: Int, _ pV: Vehicle) {
        name = pName
        age = pAge
        v = pV
    }
    
    //function to calculate birth year (inherited by all employees)
    func calcBirthYear() -> Int {
        return (2017 - self.age)
    }
    
    //function to calculate earnings (all employees inherit this)
    func calcEarnings() -> Double {
        return 1000.00
    }
    
    //TODO:reimplement this to use iprintable and getters/setters
    //function to print data (all employees inherit this, will be overridden)
    func printMyData() {
        print ("Name: \(name)")
        print ("Age: \(age)")
    }
    
}
