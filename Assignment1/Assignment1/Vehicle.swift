public class Vehicle : IPrintable{
    func printMyData() -> String {
        //should return the printable stuff
        return returnData()
    }

    private var _make:String = ""
    private var _plate:String = ""
    
    init(){
        self._make=""
        self._plate=""
    }
    
    public var make: String{
        get{return _make}
        set{_make = make}
    }
    
    
    public var plate: String{
        get{return _plate}
        set{
            _plate = plate
        }
    }
    
    func returnData()->String{
        //returns make and plate to be played with later
        let t = "make: \(make)\nplate: \(plate)"
        return t
    }
    
    
}
