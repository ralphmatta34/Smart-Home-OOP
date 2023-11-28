//
//  device.swift
//  Smart Home OOP
//
//  Created by Matta, Ralph (PEPW) on 28/11/2023.
//

import Foundation

class Device {
    private var isOn: Bool
    private let deviceType: deviceType
    private var number: Int
    private var batteryLevel: Double
    
    init(isOn: Bool, deviceType: deviceType) {
        self.isOn = isOn
        self.deviceType = deviceType
        self.number = 1
        self.batteryLevel = 1
    }
    
    func turnOff() {
        isOn = false
    }
    
    func turnOn() {
        if batteryLevel > 0.0 {
            isOn = true
            batteryLevel -= 0.05
            if batteryLevel < 0.0 {
                batteryLevel = 0.0
            }
        }
    }
    
    func toggle() {
        if isOn {
            turnOff()
        } else if !isOn {
            turnOn()
        }
    }
    
    func getStatus() -> Bool {
        return isOn
    }
    
    func charge(minutes: Double) {
        batteryLevel += 0.005*minutes
        if batteryLevel > 1.0 {
            batteryLevel = 1.0
        }
    }
    
    func addDevices(n: Int) {
        number += n
    }
    
    func getNumber() -> Int {
        return number
    }
    
    func getBatteryLevel() -> Double {
        return batteryLevel
    }
    
    func getDeviceType() -> deviceType {
        return deviceType
    }
}
