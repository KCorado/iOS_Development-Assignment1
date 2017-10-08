public class Car : Vehicle{
    private var _numWheels:Int = 4
    
    public var numWheels:Int{
        get{return _numWheels}
        set{
            _numWheels = 0
        }
    }
    
    /*
     basically with getters and setters you need to make new
     variables for each getter and setter and this shit's a pain
     in the anus since its needed for
     E V E R Y   F U C K I N G   C L A S S
     */
    
    //ok this should be how it looks, I think. Probably.
    //send help
    
    override init(){
        super.init()
        self._numWheels = 4
    }
    
    override func printMyData() ->String{
        //some code here eventually
        return returnData()
    }
    
    //overrides returnData to return generic vehicle data as well as motorcycle data
    override func returnData() -> String {
        let t = "\(super.returnData())\nwheels: \(numWheels)"
        return t
    }
}
