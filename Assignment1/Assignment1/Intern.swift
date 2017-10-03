public class Intern : Employee {
    public var schoolName : String
    
    //override constructor
    override init() {
        schoolName = ""
        super.init()
    }
    
    //constructor with age and School
    init(pName: String, pAge: Int, pSchool: String) {
        schoolName = pSchool
        super.init(pName, pAge)
    }
    
    //constructor with age, school and Vehicle
    init(pName: String, pAge: Int, pSchool: String, ppV: Vehicle) {
        schoolName = pSchool
        super.init(pName, pAge, ppV)
    }

    //overrides employee printMyData function
    override func printMyData() {
        super.printMyData()
        print ("School Name: \(schoolName)")
 
    }
    
}
