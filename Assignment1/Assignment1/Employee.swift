public class Employee : IPrintable{
    private var _name: String
    private var _age: Int
    private var _vehicle: Vehicle?
    
    //initializer for class
    init(){
        self._name = ""
        self._age = 0
        self._vehicle = Vehicle()
    }
    
    
    //getter/setter for name
    public var name: String {
        get {
            return _name
        }
        set(inputName) {
            _name = inputName
        }
    }
    
    //getter/setter for age
    public var age: Int {
        get {
            return _age
        }
        set(inputAge) {
            _age = inputAge
        }
    }
    
    //getter/setter for vehicle
    public var vehicle: Vehicle {
        get {
            return _vehicle!
        }
        set(inputVehicle) {
            _vehicle = inputVehicle
        }
    }
    
    //function to calculate birth year (inherited by all employees)
    func calcBirthYear() -> Int {
        return (2017 - self._age)
    }
    
    //function to calculate earnings (all employees inherit this)
    func calcEarnings() -> Double {
        return 1000.00
    }
    
    //inherited function from protocol IPrintable
    func printMyData() -> String {
        return returnData()
    }
    
    //function to print data (all employees inherit this, will be overridden)
    func returnData() -> String{
        //returns make and plate to be played with later
        return "Name: \(self._name)\nYear of Birth: \(calcBirthYear())\nVehicle Information:\n\(self.vehicle.printMyData())\n"
    }
    
}
