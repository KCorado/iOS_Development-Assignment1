

public class PartTime: Employee {
    
    public var hourlyRate : Int
    public var numberHoursWorked : Int
    
	//basic constructor for PartTime user
    override init() {
        hourlyRate = 0
        numberHoursWorked = 0
        super.init();
    }
    
	//constructor without vehicle
    init(ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int) {
        hourlyRate = pHourlyRate
        numberHoursWorked = pNumberHoursWorked
        super.init(ppName, ppAge)
    }
    
	//constructor with vehicle
    init(ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int, ppV: Vehicle) {
        hourlyRate = pHourlyRate
        numberHoursWorked = pNumberHoursWorked
        super.init(ppName, ppAge, ppV)
    }
    
    //override the earning calculating
    override func calcEarnings() -> Double {
        return Double(numberHoursWorked * hourlyRate)
    }
    //override the printMyData function
    override func printMyData() {
        super.printMyData()
        print ("Rate: \(hourlyRate)")
        print ("Hours Worked: \(numberHoursWorked)")
    }
}
