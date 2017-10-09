public class Motorcycle : Vehicle{
    
    private var _numWheels:Int = 2
    private var _requireHelmet:Bool = true
    
    public var requireHelmet:Bool{
        get{return _requireHelmet}
        set{_requireHelmet = true}
    }
    
    public var numWheels:Int{
        get{return _numWheels}
        set{
            _numWheels = 2
        }
    }
    
    override init(){
        super.init()
        self._numWheels = 2
        self._requireHelmet = true
    }
    
    override func printMyData() ->String{
        //some code here eventually
        return returnData()
    }
    
    //overrides returnData to return generic vehicle data as well as motorcycle data
	override func returnData() -> String {
        let t = "\(super.returnData())\nNumber of Wheels: \(numWheels)\nRequired Personal Protection: \(requireHelmet)"
		return t
	}
}
