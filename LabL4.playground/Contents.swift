//: Playground - noun: a place where people can play

import UIKit

class ATM {
    var availableMoney: Int

    init(money: Int) {
        self.availableMoney = money
    }
}

class Human {
    var name: String
    var availableMoneyBankAccount: Int

    init(name: String, money: Int) {
        self.name = name
        self.availableMoneyBankAccount = money
    }
}

let bulbankATM = ATM(money: 200_000)
let misho = Human(name: "Misho", money: 100_000)

func withdrawMony(atm: ATM, human: Human, amountOfWithdrawMoney: Int) {
    if amountOfWithdrawMoney < human.availableMoneyBankAccount && atm.availableMoney > amountOfWithdrawMoney {
        print("\(human.name) withdraw amount of \(amountOfWithdrawMoney)$ from ATM with available \(atm.availableMoney) from ATM")
    } else if amountOfWithdrawMoney > atm.availableMoney {
        print("Atm doesn't have enough money to procced your check out. ")
    } else if amountOfWithdrawMoney > human.availableMoneyBankAccount {
        print("\(human.name) don't have enough funds to complete this transaction. ")
    }
}

withdrawMony(atm: bulbankATM, human: misho, amountOfWithdrawMoney: 150_000)

class CupClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

struct CupStruct {
    var name: String
    // Struct have free initializer so it's not nessasiry to create if we don't need some kind of special initializer.
}

var classCup = CupClass(name: "Class")
var structCup = CupStruct(name: "Struct")


// Case : You must implement a program for registering different vehicles. There are few main types of vehicles: Car, Motorcycle, Truck, Long Vehicle, Special Vehicle.
//
// The properties that each of the vehicle types are: Registration number, Engine, Hps, VIN number. The card has also number of seats, motorcycle - max speed, Truck and Long Vehicle - maximum load, Special Vehicle - special vehicle type and other information.

class Vehicle {
    var registrationNumber: String
    var engine: String
    var hps: Int
    var vinNumber: String

    init(registerNumber: String, engine: String, hps: Int, vinNumber: String) {
        self.registrationNumber = registerNumber
        self.engine = engine
        self.hps = hps
        self.vinNumber = vinNumber
    }
}

class Car: Vehicle {
    var numberOfSeats: Int
    init(registerNumber: String, engine: String, hps: Int, vinNumber: String, numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
        super.init(registerNumber: registerNumber, engine: engine, hps: hps, vinNumber: vinNumber)
    }
}

class Motorcycle: Vehicle {
    var maxSpeed: Int
    init(registerNumber: String, engine: String, hps: Int, vinNumber: String, speed: Int) {
        self.maxSpeed = speed
        super.init(registerNumber: registerNumber, engine: engine, hps: hps, vinNumber: vinNumber)
    }
}

class Truck: Vehicle {
    var maximumLoad: Int
    init(registerNumber: String, engine: String, hps: Int, vinNumber: String, maximumLoad: Int) {
        self.maximumLoad = maximumLoad
        super.init(registerNumber: registerNumber, engine: engine, hps: hps, vinNumber: vinNumber)
    }
}

class longVehicle: Truck {
    override init(registerNumber: String, engine: String, hps: Int, vinNumber: String, maximumLoad: Int) {
        super.init(registerNumber: registerNumber, engine: engine, hps: hps, vinNumber: vinNumber, maximumLoad: maximumLoad)
    }
}


//Finish the case with all other types of vehicles.
//Make a new class called policemen. It must have property name, rank and must have function checkInformation(vehicle) that prints all the data for a vehicle.

class Policemen {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    func checkInformation(vehicle: Vehicle) {
        print("Vehicle with registration number:\(vehicle.registrationNumber)\nHPS: \(vehicle.hps) \ntype of engine: \(vehicle.engine) \nVin number: \(vehicle.vinNumber)")
    }
}


var ferrari = Car(registerNumber: "CT 1414 CT", engine: "Diesel", hps: 300, vinNumber: "DSDS14235DSAD142DASD", numberOfSeats: 2)
var officer = Policemen(name: "Qnkov", rank: "Officer")
officer.checkInformation(vehicle: ferrari)


