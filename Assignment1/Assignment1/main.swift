//--------------------------------------------//
//Data creation for the employees to be created

//Creation of array to store employee
var aEmp = [Employee]()
//-----------------------------


//------Employee1 - Full-Time
//Creating the fulltime employee object
var ft1 = FullTime()

//Adding details to the employee
ft1.name = "Janet"
ft1.age = 20
ft1.salary = 50000
ft1.bonus = 2000

//Creating a vehicle for the employee, and associating it to the employee
var vRef = Vehicle(pMake: "Ferrari",pModel: "458")
ft1.v = vRef

//Adding the fulltime employee to the array
aEmp.append(ft1)
//-----------------------------


//------Employee2 - Part-Time
//Creating the parttime employee object
var pt1 : PartTime

//Creating the car to associate to the employee
vRef = Vehicle(pMake: "Porsche", pModel: "Carrera")

//Defining the employee, adding the employee's information
pt1 = PartTime(ppName: "Matthew", ppAge: 10, pHourlyRate: 100, pNumberHoursWorked: 2, ppV: vRef)

//Adding the parttime employee to the array
aEmp.append(pt1)
//-----------------------------


//------Employee3 - Intern
//Creating the car to associate to the employee
vRef = Vehicle(pMake: "BMW", pModel: "X6")

//Creating and defining the first intern employee, adding the employee's information
var it1 = Intern(pName: "Loonie", pAge: 15, pSchool: "WoofCenter", ppV: vRef)

//Adding the first intern employee to the array
aEmp.append(it1)
//-----------------------------


//------Employee4 - Intern
//Creating and defining the second intern employee, adding the employee's information
var it2 = Intern(pName: "Toonie", pAge: 15, pSchool: "JKWoofCenter")

//Adding the second intern employee to the array
aEmp.append(it2)
//-----------------------------




//--------------------------------------------//
//Section to calculate the payroll for a company

var totalPR : Double = 0.0
var e : Employee

for i in 0..<aEmp.count {
    
    e = aEmp[i]
    var earn = e.calcEarnings()
    
	//print ("Name: \(e.name)")
	//print ("Age: \(e.age)")
    e.printMyData()
    //display vehicle
    if (e.v == nil) {
        print ("** Employee has not registered any vehicle ***")
    } else {
        print ("*** Employe has a Vehicle")
        print ("Make: \(e.v!.make)")
        print ("Model: \(e.v!.model)")
    }
    print ("Birth Year: " + String(e.calcBirthYear()))
    print ("Earnings: \(earn)")
    print ("**********************")
    
    totalPR = totalPR + earn
}

print ("TOTAL PAYROLL: \(totalPR)")





/* === The Cornflakes Call to Us ===

▮ O
\( )\
 /_\
 
*/
