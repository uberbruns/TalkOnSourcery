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
    enum Kind {
        case light(on: Bool, brightness: Double)
        case powerSwitch(on: Bool)
        case blinds(position: Double, angle: Double)
        case airConditioning(temperature: Double)
    }

    let id: Int
    let name: String
    let kind: Kind
}
