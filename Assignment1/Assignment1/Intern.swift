public class Intern : Employee {
    private var _salary : Int
    private var _schoolName : String
    
    //override constructor
    override init() {
        self._schoolName = ""
        self._salary = 0
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
    
    //getter/setter for salary
    public var salary: Int {
        get {
            return _salary
        }
        set(inputSalary) {
            _salary = inputSalary
        }
    }

    override func calcEarnings() -> Double {
        return Double(salary)
    }
    
    override func printMyData() ->String{
        return returnData()
    }
    
    //overrides returnData to return generic employee data as well as intern data
    override func returnData() -> String {
        return "\(super.returnData())Employment Information:\n\tStatus: Intern\n\tSchool Name: \(self.schoolName)"
    }
    
}
