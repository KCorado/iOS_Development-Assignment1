public class Vehicle : IPrintable{
    //function stub for IPrintable
    func printMyData() {
        //nothing here for now
    }
    
    public var make: String
    public var plate: String
    
    //empty costructor
    init() {
        make = ""
        plate = ""
    }
    
    //constructor for vehicle (need to add type to it)
    init(pMake: String, pPlate: String) {
        make = pMake
        plate = pPlate
    }

    func returnData()->String{
        //returns make and plate to be played with later
        let t = "make: \(make)\nplate: \(plate)"
        return t
    }
    
    
}
