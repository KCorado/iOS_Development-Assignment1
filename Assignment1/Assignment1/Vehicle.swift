public class Vehicle {
    public var make: String
    public var model: String
    
    //empty costructor
    init() {
        make = ""
        model = ""
    }
    
    //constructor for vehicle (need to add type to it)
    init(pMake: String, pModel: String) {
        make = pMake
        model = pModel
    }
}
