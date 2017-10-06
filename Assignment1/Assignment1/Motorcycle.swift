public class Motorcycle : Vehicle {
	public var numWheels:Int

    /*
     basically with getters and setters you need to make new
     variables for each getter and setter and this shit's a pain
     in the anus since its needed for
     E V E R Y   F U C K I N G   C L A S S
     */
    
    //override constructor
    override init() {
        numWheels = 2
        super.init()
    }
    
    override init(pMake: String, pPlate: String) {
        self.numWheels = 2
        super.init(pMake: pMake, pPlate: pPlate)
    }
    
    //overrides returnData to return generic vehicle data as well as motorcycle data
	override func returnData() -> String {
        let t = "\(super.returnData())\nwheels: \(numWheels)"
		return t
	}
}
