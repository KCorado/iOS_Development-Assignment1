public class Motorcycle : Vehicle{
	var numWheels:Int

	override init(){
		numWheels = 2

		super.init();
	}

	init(_make:String,_plate:String,_numWheels:Int = 2){
		numWheels = _numWheels
		super.init(_make,_plate);
	}

	override func returnData() -> String {
		var t:String = super.returnData()\(numWheels)
		return t
	}
}