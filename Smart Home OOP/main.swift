//
//  main.swift
//  Smart Home OOP
//
//  Created by Matta, Ralph (PEPW) on 28/11/2023.
//

import Foundation

class SmartHome {
    private let 
}

let light = Device(isOn: false, deviceType: .light)
let heater = Device(isOn: false, deviceType: .heater)
let speaker = Device(isOn: true, deviceType: .audio)


print("It's very cold; I want to heat up my room")
heater.turnOn()
heater.addDevices(n: 4)
print(heater.getNumber())

print("I'm warm now but my heaters are low on battery; let's charge up")
heater.charge(minutes: 0.5)
print(heater.getBatteryLevel())
