public class Motorcycle : Vehicle{
	var numWheels:Int

	override init(){
		numWheels = 2
		super.init();
	}

	init(_make:String,_plate:String,_numWheels:Int = 2){
		numWheels = _numWheels
        super.init(pMake: _make,pPlate: _plate);
	}

    //overrides returnData to return generic vehicle data as well as motorcycle data
	override func returnData() -> String {
        let t = "\(super.returnData())\nwheels: \(numWheels)"
		return t
	}
}
