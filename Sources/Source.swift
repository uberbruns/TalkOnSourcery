import Foundation

protocol Person {
    var name: String { get }
}

struct User: Person {
    let name: String
    let homes: [Home]
}

struct Home {
    let admin: User
    let address: String
    let devices: [Device]
}

struct Address {
    let street: String
    let city: String
}

struct Device {
    // sourcery: case_properties
    enum Kind {
        case light(status: Status<LightReading>)
        case powerSwitch(status: Status<PowerSwitchReading>)
        case blinds(status: Status<BlindsReading>)
        case airConditioning(status: Status<AirConditioningReading>)
    }

    let id: Int
    let name: String
    let kind: Kind
}

// sourcery: case_properties
enum Status<R> {
    case connected(reading: R)
    case disconnected
}

struct LightReading {
    // sourcery: case_properties
    enum State {
        case on(brightness: Double)
        case off
    }

    let state: State
}

struct PowerSwitchReading {
    // sourcery: case_properties
    enum State {
        case on
        case off
    }

    let state: State
}

struct BlindsReading {
    // sourcery: case_properties
    enum State {
        case moving(targetPosition: Double, targetAngle: Double)
        case stopped
    }

    let state: State
    let currentPosition: Double
    let currentAngle: Double
}

struct AirConditioningReading {
    // sourcery: case_properties
    enum State {
        enum Mode {
            case cooling
            case heating
        }

        case on(targetTemperature: Double, mode: Mode)
        case off
    }

    let state: State
    let currentTemperature: Double
}
