public class Vehicle {
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
    	var t:String = "make: "\(make)\"\nplate: "\(plate)
    	return t
    }
}
