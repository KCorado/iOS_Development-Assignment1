public class FullTime : Employee {
    
    private var _salary: Int
    private var _bonus: Int
    
    //initializer that overrides the Employee init
    override init() {
        self._salary = 0
        self._bonus = 0
        super.init();
    }
    
    //getter/setter for age
    public var salary: Int {
        get {
            return _salary
        }
        set(inputSalary) {
            _salary = inputSalary
        }
    }
    
    //getter/setter for age
    public var bonus: Int {
        get {
            return _bonus
        }
        set(inputBonus) {
            _bonus = inputBonus
        }
    }
    
    override func calcEarnings() -> Double {
        return Double(salary + bonus)
    }
    
    override func printMyData() ->String{
        return returnData()
    }
    
    //overrides returnData to return generic employee data as well as fulltime data
    override func returnData() -> String {
        return "\(super.returnData())Employment Information:\n\tStatus: FullTime\n\tEarnings: $\(calcEarnings()) (\(self.salary) + \(self.bonus))"
    }
}
