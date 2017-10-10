/*
 Shit to do:
 (delete them as we complete them)
 -implement two new vehicle child classes (car and motorcycle) with two unique attributes each - Lopez
 -implement two new partTime child classes (fixed and comission based)
 with different calcEarnings method for each - Corado
 -implement swift protocol IPrintable with single method printMyData which returns string
 -very class MUST adopt the protocol IPrintable and return a printable version of their properties
 -use getters and setters for every class to expose only what's needed when it's needed
 -test output with at least two objects
 */

//--------------------------------------------//
//Data creation for the employees to be created

//Creation of array to store employee
var aEmp = [Employee]()
//-----------------------------


//------Employee1 - Full-Time
//Creating the fulltime employee object
var ft1 = FullTime()

//Adding details to the employee
ft1.name = "Janet Smith"
ft1.age = 23
ft1.salary = 50000
ft1.bonus = 2000

var mc1 = Motorcycle()
mc1.make = "Harley"
mc1.plate = "P0UND1NG 1T"

//adding motorcycle to fulltimer
ft1.vehicle = mc1

//Adding the fulltime employee to the array
aEmp.append(ft1)
//-----------------------------


//------Employee2 - Part-Time
//Creating the parttime employee object
var pt1 : PartTime = PartTime()
pt1.name = "Mattew Tekk"
pt1.age = 19
pt1.hourlyRate = 14
pt1.numHoursWorked = 30

//Creating the car to associate to the employee
var car1 : Car = Car()
car1.make = "Ford Freestar"
car1.plate = "F3G4223"

//Adding car to parttimer
pt1.vehicle = car1

//Adding the parttime employee to the array
aEmp.append(pt1)
//-----------------------------


//------Employee3 - Intern
//Creating the car to associate to the employee
var car2 : Car = Car()
car2.make = "Dodge Ram"
car2.plate = "G3G4M66"

//Creating and defining the first intern employee, adding the employee's information
var it1 = Intern()
it1.name = "Jerry Smith"
it1.age = 30
it1.salary = 1000
it1.schoolName = "Smiths Academy"

//Adding the first intern employee to the array
aEmp.append(it1)
//-----------------------------




//--------------------------------------------//
//Section to calculate the payroll for a company

var totalPR : Double = 0.0
var e : Employee

for i in 0..<aEmp.count {
    
    //get the current employee
    e = aEmp[i]
    
    //Print the employee's data
    print(e.printMyData())
    print("****************************************************")
    
    //Addup the total payroll
    totalPR = totalPR + e.calcEarnings()
}

print ("TOTAL PAYROLL: $\(totalPR)")





/* === The Cornflakes Call to Us ===

▮ O
\( )\
 /_\
 
*/
