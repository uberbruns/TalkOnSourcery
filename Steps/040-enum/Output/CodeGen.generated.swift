// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

internal extension AirConditioningReading.State {

    internal struct On {
        internal var targetTemperature: Double
        internal var mode: Mode
    }

    internal var isOn: Bool {
        if case .on = self {
            return true
        } else {
            return false
        }
    }

    internal var on: On? {
        get {
            switch self {
            case .on(let targetTemperature, let mode):
                return On(targetTemperature: targetTemperature, mode: mode)
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.on, let newValue?):
                self = .on(targetTemperature: newValue.targetTemperature, mode: newValue.mode)
            default:
                break
            }
        }
    }

    internal var isOff: Bool {
        if case .off = self {
            return true
        } else {
            return false
        }
    }
}


internal extension BlindsReading.State {

    internal struct Moving {
        internal var targetPosition: Double
        internal var targetAngle: Double
    }

    internal var isMoving: Bool {
        if case .moving = self {
            return true
        } else {
            return false
        }
    }

    internal var moving: Moving? {
        get {
            switch self {
            case .moving(let targetPosition, let targetAngle):
                return Moving(targetPosition: targetPosition, targetAngle: targetAngle)
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.moving, let newValue?):
                self = .moving(targetPosition: newValue.targetPosition, targetAngle: newValue.targetAngle)
            default:
                break
            }
        }
    }

    internal var isStopped: Bool {
        if case .stopped = self {
            return true
        } else {
            return false
        }
    }
}


internal extension Device.Kind {

    internal var isLight: Bool {
        if case .light = self {
            return true
        } else {
            return false
        }
    }

    internal var light: Status<LightReading>? {
        get {
            switch self {
            case .light(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.light, let newValue?):
                self = .light(newValue)
            default:
                break
            }
        }
    }

    internal var isPowerSwitch: Bool {
        if case .powerSwitch = self {
            return true
        } else {
            return false
        }
    }

    internal var powerSwitch: Status<PowerSwitchReading>? {
        get {
            switch self {
            case .powerSwitch(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.powerSwitch, let newValue?):
                self = .powerSwitch(newValue)
            default:
                break
            }
        }
    }

    internal var isBlinds: Bool {
        if case .blinds = self {
            return true
        } else {
            return false
        }
    }

    internal var blinds: Status<BlindsReading>? {
        get {
            switch self {
            case .blinds(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.blinds, let newValue?):
                self = .blinds(newValue)
            default:
                break
            }
        }
    }

    internal var isAirConditioning: Bool {
        if case .airConditioning = self {
            return true
        } else {
            return false
        }
    }

    internal var airConditioning: Status<AirConditioningReading>? {
        get {
            switch self {
            case .airConditioning(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.airConditioning, let newValue?):
                self = .airConditioning(newValue)
            default:
                break
            }
        }
    }
}


internal extension LightReading.State {

    internal var isOn: Bool {
        if case .on = self {
            return true
        } else {
            return false
        }
    }

    internal var on: Double? {
        get {
            switch self {
            case .on(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.on, let newValue?):
                self = .on(newValue)
            default:
                break
            }
        }
    }

    internal var isOff: Bool {
        if case .off = self {
            return true
        } else {
            return false
        }
    }
}


internal extension PowerSwitchReading.State {

    internal var isOn: Bool {
        if case .on = self {
            return true
        } else {
            return false
        }
    }

    internal var isOff: Bool {
        if case .off = self {
            return true
        } else {
            return false
        }
    }
}


internal extension Status {

    internal var isConnected: Bool {
        if case .connected = self {
            return true
        } else {
            return false
        }
    }

    internal var connected: R? {
        get {
            switch self {
            case .connected(let value):
                return value
            default:
                return nil
            }
        }
        set {
            switch (self, newValue) {
            case (.connected, let newValue?):
                self = .connected(newValue)
            default:
                break
            }
        }
    }

    internal var isDisconnected: Bool {
        if case .disconnected = self {
            return true
        } else {
            return false
        }
    }
}


