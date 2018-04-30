//: Playground - noun: a place where people can play

import UIKit
//********** Constants & Variables **********//

let greetingMessage: String = "Welcome to the Fuel Calculator ⛽️\nChoose one of the following options"
let farewellMessage: String = "Thank you for using Fuel Calculator ⛽️\nHave a nice day!"

let differenceMessage: String = "1 = Average fuel consumption between the current and previous fueling"
let convertL100KmToMpgMessage: String = "2 = Convert L/100km to mpg"
let averagePriceMessage: String = "3 = Average price per kilometer on given fuel price per liter"
let fuelConsumptionAndDateMessage: String = "4 = Fuel consumption and date of fueling"

var distanceInKm = Double()
var fuelAmountInLiters = Double()
var date = String()
var price = Double()

var literPer100Km = Double()
var previousConsumption = Double()
var currentConsumption = Double()
var avFuelConsumBetweenEvents = Double()
var allConsumptionInLkm: [String: Double] = Dictionary()

var userMenuChoice = String()
var shutDownStatus: Int = 0

//********** Calculating Functions **********//

//Calculate average fuel consumption on liter per 100 kilometers
func averageFuelConsumptionInLitersPer100Km(distance: Double, fuelAmmount: Double, date: String) -> Double {
    literPer100Km = 100 / (distance / fuelAmmount)
    return literPer100Km
}

//Calculate average fuel consumption based on user input and store it for later use
func calculateAverageFuelConsumption() {
    print("Enter distance in km:", terminator:"")
    distanceInKm = Double(readLine()!)!
    print("Enter fuel ammount in liters:", terminator:"")
    fuelAmountInLiters = Double(readLine()!)!
    print("Enter date:", terminator:"")
    date = readLine()!
    
    allConsumptionInLkm[date] = averageFuelConsumptionInLitersPer100Km(distance: distanceInKm, fuelAmmount: fuelAmountInLiters, date: date)
}

//Calculate the average fuel consumption between two events
func fuelConsumptionBeteenTwoEvents() {
    for (index, values) in allConsumptionInLkm.enumerated() {
        if index == 0 {
            previousConsumption = values.value
        }
        if index == 1 {
            currentConsumption = values.value
        }
    }
    
    avFuelConsumBetweenEvents = (previousConsumption + currentConsumption) / 2
    print("The average fuel consumption between the current and last refueling is \(round(avFuelConsumBetweenEvents * 100) / 100) L/100km")
}

//Convert fuel consumption of liter per 100 kilometers to miles per galon
func convertLiterPer100KmToMpg() {
    let milesPerGalon = literPer100Km * 2.825
    print("\(round(literPer100Km * 100) / 100) liters/100km equals to \(round(milesPerGalon * 100) / 100) mpg")
}

//Calculate the average price per kilometer on given fuel price per liter.
func calculateAveragePricePerKilometer() {
    print("Enter price per liter")
    price = Double(readLine()!)!
    let averagePriceL100Km = price / 100
    print("Average price per kilometer is \(averagePriceL100Km)")
}

//Print the average fuel consumption on different dates of fueling
func fuelDatesAndConsumption() {
    for (key, value) in allConsumptionInLkm {
        print("On \(key) the average fuel consumption was \(round(value * 100) / 100) L/100km")
    }
}

//********** Menu & Function Calls **********//

func userChoice() {
    print(greetingMessage)
    print("\(differenceMessage)\n\(convertL100KmToMpgMessage)\n\(averagePriceMessage)\n\(fuelConsumptionAndDateMessage)\nEnter number:", terminator:"")
    userMenuChoice = readLine()!
    switch userMenuChoice {
    case "1":
        for _ in 1...2 {
            calculateAverageFuelConsumption()
        }
        fuelConsumptionBeteenTwoEvents()
        print("Do you wish to continue (Y/N)")
        userMenuChoice = readLine()!
    case "2":
        calculateAverageFuelConsumption()
        convertLiterPer100KmToMpg()
        print("Do you wish to continue (Y/N)")
        userMenuChoice = readLine()!
    case "3":
        calculateAverageFuelConsumption()
        calculateAveragePricePerKilometer()
        print("Do you wish to continue  (Y/N)")
        userMenuChoice = readLine()!
    case "4":
        var userContinueChoice = String()
        repeat {
            calculateAverageFuelConsumption()
            fuelConsumptionBeteenTwoEvents()
            print("Do you wish to continue with calculations (Y/N)")
            userContinueChoice = readLine()!
        } while userContinueChoice == "Y" || userContinueChoice == "y"
        fuelDatesAndConsumption()
        print("Do you wish to continue  (Y/N)")
        userMenuChoice = readLine()!
    default:
        print("Enter only numbers from the menu")
    }
}

//********** Program Execution **********//

while shutDownStatus < 1 {
    userChoice()
    if userMenuChoice == "Y" || userMenuChoice == "Y" {
        userChoice()
    } else if userMenuChoice == "N" || userMenuChoice == "n"{
        print(farewellMessage)
        shutDownStatus += 1
    } else {
        print("Enter only Y or N")
    }
}
