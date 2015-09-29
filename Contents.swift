import UIKit

var players = [15 : "Anisimov", 39 : "Baun", 29 : "Bickell", 56 : "Dano", 11 : "Desjardins", 28 : "Garbutt", 38 : "Hartman", 48 : "Hinostroza", 81 : "Hossa", 88 : "Kane", 16 : "Kruger", 72: "Panarin", 70: "Rasmussen", 61: "Ross", 65: "Shaw", 86: "Teravainen", 14: "Tikhonov", 19 : "Toews", 26 : "Cumiskey", 6 :"Daley", 52:  "Gustafsson", 4 : "Hjalmarsson", 2 : "Keith", 32 : "Rozsival", 5 : "Rundbland", 7 : "Seabrook", 43 : "Svedberg", 57 : "Riemsdyk", 50 : "Crawford", 33 : "Darling", 49 :"Leighton"]


var names = ["Anisimov", "Baun", "Bickell", "Dano", "Desjardins", "Garbutt", "Hartman", "Hinostroza", "Hossa", "Kane", "Kruger", "Panarin", "Rasmussen", "Ross", "Shaw", "Teravainen", "Tikhonov", "Toews", "Cumiskey", "Daley", "Gustafsson", "Hjalmarsson", "Keith", "Rozsival", "Rundbland", "Seabrook", "Svedberg", "Riemsdyk", "Crawford", "Darling", "Leighton"]

var countries = ["RUS", "CAN", "CAN", "AUT", "CAN", "CAN ", "USA", "USA", "SVK", "USA", "SWE", "RUS", "SWE", "USA", "CAN", "FIN", "LVA", "CAN", "CAN", "CAN", "SWE", "SWE", "CAN", "CZE", "SWE", "CAN","SWE", "USA", "CAN", "USA", "CAN"]

var ages = [27, 23, 29, 20, 29, 30, 21, 21, 36, 26, 25, 23, 25, 23, 24, 21, 27, 27, 28, 31, 23, 28, 32, 37, 24, 30, 24, 24, 30, 26, 34]
var birthMonths = ["May", "May", "March", "November", "July", "August", "September", "April", "January", "November", "May", "October", "July", "May", "July", "September", "May", "April", "Deceber", "October", "March", "June", "July", "September", "October", "April", "May", "July", "December", "December", "May"]
var heights = [6.33, 6.17, 6.33, 5.92, 6.08, 6.00, 5.92, 5.75, 6.08, 5.92, 6.00, 5.92, 6.25, 6.00, 5.92, 5.92, 6.17, 6.17, 5.92, 5.92, 6.00, 6.25, 6.08, 6.08, 6.17, 6.25, 6.67, 6.17, 6.17, 6.50, 6.25]
var monthKey = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthCounters = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var ageTotal = 0
var averageAge = 0
var temp = 0
var janCount = 0
var febCount = 0
var marCount = 0
var aprCount = 0
var mayCount = 0
var junCount = 0
var julCount = 0
var augCount = 0
var sepCount = 0
var octCount = 0
var novCount = 0
var decCount = 0
var mostFrequentMonth = ""
var highestCount = 0
var heightTotal = 0.00
var averageHeight = 0.00
var nameTemp = ""
var counterTemp = 0
var monthTemp = ""
var autGroup:Array<String> = Array<String>()
var canGroup:Array<String> = Array<String>()
var czeGroup:Array<String> = Array<String>()
var finGroup:Array<String> = Array<String>()
var lvaGroup:Array<String> = Array<String>()
var rusGroup:Array<String> = Array<String>()
var svkgroup:Array<String> = Array<String>()
var sweGroup:Array<String> = Array<String>()
var usaGroup:Array<String> = Array<String>()
var nameOrder:Array<String> = Array<String>()

var nameListCounter = 0
var countryTemp = ""

/***** Sort and list players by age ****/

for var n = 0; n < 29; ++n{
    for var i = 0; i < 30; ++i
    {
        if ages[i] > (ages[i+1])
        {
            temp = ages[i]
            nameTemp = names[i]
            countryTemp = countries[i]
            ages[i] = ages[i + 1]
            names[i] = names[i + 1]
            countries[i] = countries[i+1]
            ages[i + 1] = temp
            names[i + 1] = nameTemp
            countries[i+1] = countryTemp
        }
        
    }
}

println("Age     Name")
println("-------------")
for var index = 0; index < 31; index++
{
    println("\(ages[index]) .... \(names[index])")
}
println("")

/**** Sort and list by country ***/


for var i = 0; i < 31; i++
{
    if countries[i] == "AUT"
    {
    autGroup.append("AUT")
    nameOrder.append(names[i])
    }
}
for var j = 0; j < 31; j++
{
    if countries[j] == "CAN"
    {
        canGroup.append("CAN")
        nameOrder.append(names[j])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "CZE"
    {
        czeGroup.append("CZE")
        nameOrder.append(names[i])
    }
}
for var j = 0; j < 31; j++
{
    if countries[j] == "FIN"
    {
        finGroup.append("FIN")
        nameOrder.append(names[j])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "LVA"
    {
        lvaGroup.append("LVA")
        nameOrder.append(names[i])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "RUS"
    {
        rusGroup.append("RUS")
        nameOrder.append(names[i])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "SVK"
    {
        svkgroup.append("SVK")
        nameOrder.append(names[i])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "SWE"
    {
        sweGroup.append("SWE")
        nameOrder.append(names[i])
    }
}
for var i = 0; i < 31; i++
{
    if countries[i] == "USA"
    {
        usaGroup.append("USA")
        nameOrder.append(names[i])
    }
}

for country in autGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in canGroup
{
    println("\(country).....\(nameOrder[nameListCounter)")
    nameListCounter++
}
for country in czeGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in finGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in lvaGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in rusGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in svkgroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in sweGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}
for country in usaGroup
{
    println("\(country)....\(nameOrder[nameListCounter])")
    nameListCounter++
}

/***** Calculate and display average age ******/
for age in ages
{
    ageTotal = ageTotal + age
}
averageAge = ageTotal/31
println("The average age is \(averageAge)")

/**** Average height ****/

for (var x = 0; x < 31; x++)
{
    heightTotal = heightTotal + heights[x]
}

averageHeight = heightTotal/31
println("Average height is \(averageHeight) feet")


/***** Most frequent birth month ******/

//Go through the list of bdays and tally up how many there are per month
for month in birthMonths
{
    if month == "January"
    {
        monthCounters[0]++
    }
    else if month == "February"
    {
        monthCounters[1]++
    }
    else if month == "March"
    {
        monthCounters[2]++
    }
    else if month == "April"
    {
        monthCounters[3]++
    }
    else if month == "May"
    {
        monthCounters[4]++
    }
    else if month == "June"
    {
        monthCounters[5]++
    }
    else if month == "July"
    {
        monthCounters[6]++
    }
    else if month == "August"
    {
        monthCounters[7]++
    }
    else if month == "September"
    {
        monthCounters[8]++
    }
    else if month == "October"
    {
        monthCounters[9]++
    }
    else if month == "November"
    {
        monthCounters[10]++
    }
    else
    {
        monthCounters[11]++
    }
    
    
    
}
//This will sort in descending order
for var x = 0; x < 11; x++
{
for var i = 0; i < 11; i++
{
    if monthCounters[i] < monthCounters[i+1] //If the first element is smaller than the second, switch them
    {
        counterTemp = monthCounters[i] //We have to switch both the month names and the number of birthdays per month
        monthTemp = monthKey[i]
        monthCounters[i] = monthCounters[i+1]
        monthKey[i] = monthKey[i+1]
        monthCounters[i+1] =  counterTemp
        monthKey[i+1] = monthTemp
    }
}
}
println("The most common birth month is \(monthKey[0])") //Display results



















