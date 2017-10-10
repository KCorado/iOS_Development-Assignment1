public class Car : Vehicle{
    
    private var _numWheels:Int = 4
    private var _requireHelmet:Bool = false
    
    public var requiredHelmet:Bool{
        get{return _requireHelmet}
        set{_requireHelmet = false}
    }
    
    public var numWheels:Int{
        get{return _numWheels}
        set{
            _numWheels = 4
        }
    }
    
    override init(){
        super.init()
        self._numWheels = 4
        self._requireHelmet = false
    }
    
    override func printMyData() ->String{
        //some code here eventually
        return returnData()
    }
    
    //overrides returnData to return generic vehicle data as well as motorcycle data
    override func returnData() -> String {
        let t = "\(super.returnData())\n\tNumber of Wheels: \(numWheels)\n\tRequired Personal Protection: \(requiredHelmet)"
        return t
    }
}
