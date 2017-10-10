public class Intern : Employee {
    private var _schoolName : String
    
    //override constructor
    override init() {
        self._schoolName = ""
        super.init()
    }
    
    //getter/setter for school name
    public var schoolName: String {
        get {
            return _schoolName
        }
        set(inputSchoolName) {
            _schoolName = inputSchoolName
        }
    }
    
    override func printMyData() ->String{
        return returnData()
    }
    
    //overrides returnData to return generic employee data as well as intern data
    override func returnData() -> String {
        return "\(super.returnData())Employment Information:\n\tStatus: Intern\n\tSchool Name: \(self.schoolName)"
    }
    
}
