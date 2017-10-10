public class PartTime: Employee {
    private var _hourlyRate : Int
    private var _numHoursWorked : Int
    
    //basic constructor for PartTime user
    override init() {
        self._hourlyRate = 0
        self._numHoursWorked = 0
        super.init();
    }
    
    //getter/setter for hourly rate
    public var hourlyRate: Int {
        get {
            return _hourlyRate
        }
        set(inputHourlyRate) {
            _hourlyRate = inputHourlyRate
        }
    }
    
    //getter/setter for number of hours worked
    public var numHoursWorked: Int {
        get {
            return _numHoursWorked
        }
        set(inputNumHoursWorked) {
            _numHoursWorked = inputNumHoursWorked
        }
    }
    
    //override the earning calculating
    override func calcEarnings() -> Double {
        return Double(numHoursWorked * hourlyRate)
    }
    
    override func printMyData() ->String{
        return returnData()
    }
    
    //overrides returnData to return generic employee data as well as partime data
    override func returnData() -> String {
        return "\(super.returnData())Employment Information:\n\tStatus: PartTime\n\tEarnings: $\(calcEarnings()) ($\(hourlyRate)/hour * \(numHoursWorked) hours)"
    }
    
}
