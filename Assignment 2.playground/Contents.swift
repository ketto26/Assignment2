/*              -- 1 --
 შექმენით ორი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ჯამი.
 */

let firstNumber: Int = 10
let secondNumber: Int = 27

print(firstNumber + secondNumber)
print()





/*              -- 2 --
 შექმენით Int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა, და შეამოწმეთ არის თუ არა ეს რიცხვი 10-ზე მეტი და 20-ზე ნაკლები ან ტოლი, 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი, 50-ზე მეტი და 100-ზე ნაკლები ან ტოლი, 100-ზე მეტი და შედეგი დაბეჭდეთ.
 */

let number: Int = 10

switch number{
case 11...20:
    print("Number '\(number)' is more than 10 and less or equal to 20")
case 21...50:
    print("Number '\(number)' is more than 20 and less or equal to 50")
case 51...100:
    print("Number '\(number)' is more than 50 and less or equal to 100")
case 101...:
    print("Number '\(number)' is more than 100")
default:
    print("Number '\(number)' is less than 11")
}
print()





/*              -- 3 --
 for-in ციკლის გამოყენებით, დაბეჭდეთ რიცხვები 1-იდან 20-ამდე. რიცხვები ეწეროს ერთ ხაზზე, გამოყოფილი იყოს სფეისებით. შედეგი: 1 2 3 4...
 */

for number in 1...20 {
    print(number, terminator: " ")
}




print("\n")




/*              -- 4 --
 while ციკლის გამოყენებით, 1-იდან 100-ამდე დაბეჭდეთ ყველა კენტი რიცხვის ჯამი.
 */

var startingNumber = 1
var sum = 0

while startingNumber <= 100 {
    if startingNumber % 2 != 0 {
        sum += startingNumber
    }
    startingNumber += 1
}
print("The sum of all odd number in range of 1 - 100 is \(sum)")
print()




/*              -- 5 --
 შექმენით String ტიპის ცვლადი, და ციკლის გამოყენებით დაარევერსეთ ეს ცვლადი, მაგ: თუ გვაქვს TBC Academy უნდა მივიღოთ ymedacA CBT.
 */

let input: String = "TBC Academy"
var reversedString: String = ""

for char in input.reversed() { reversedString.append(char) }
print(reversedString)
print()





/*              -- 6 --
 დაბეჭდეთ ყველა ორნიშნა რიცხვი რომელიც ერთნაირი ციფრებით არის შედგენილი.
 */
for twoDigitNum in 11...99 {
    if twoDigitNum % 11 == 0 {
        print(twoDigitNum)
    }
}
print()





/*              -- 7 --
 გაქვს 9 ნიშნა რიცხვი და დაბეჭდე შებრუნებული რიცხვი.
 */
let personsID = 987654321
let reversedID = String(String(personsID).reversed())

if let reversedNumber = Int(reversedID) {
    print("Reversed Number: \(reversedNumber)")
} else {
    print("Invalid input")
}
print()





/*              -- 8 --
 შექმენით bool-ეან ცვლადი, მაგალითად: isNumberFound და while loop-ის გამოყენებით იპოვეთ პირველი რიცხვი რომელიც იყოფა 5-ზეც და 9-ზეც ერთდროულად. 1-იდან დაიწყეთ ათვლა.
 */
let isNumberFound = true
var numbersToCheck = 1
while isNumberFound {
    if numbersToCheck.isMultiple(of: 5) && numbersToCheck.isMultiple(of: 9){
        print("Number \(numbersToCheck) is multiple of 5 and 9")
        break
    }else{
        numbersToCheck += 1
    }
}
print()






/*          -- 9 --
 შექმენი String ცვლადი მაგალითად month, რომელსაც მიანიჭებ თვის მნიშვნელობას, მაგალითად: "march" და switch statement-ის გამოყენებით დაბეჭდეთ წელიწადის რა დროა
 */
let month: String = "September"

switch month{
case "December", "January", "February":
    print("It's Winter now ☃️")
case "March", "April", "May":
    print("It's Spring 🌺")
case "June", "July", "August":
    print("It's Summer 😎🌞⛱️")
case "September", "October", "November":
    print("It's Autumn now, my birtday period 🍁🍂")
default:
    print("It's wrong month")
}
print()






/*              -- 10 --
 while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."

 */
var currentLight = "🔴"
var turnOff = false

while !turnOff {
    switch currentLight {
    case "🔴":
        print("\(currentLight)->", terminator: "")
        currentLight = "🌕"
    case "🌕":
        print("\(currentLight)->", terminator: "")
        currentLight = "🟢"
    case "🟢":
        print("\(currentLight)->", terminator: "")
        currentLight = "🔴"
    default:
        break
    }
}
