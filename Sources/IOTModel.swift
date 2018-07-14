protocol Person {
    let name: String
}

struct User: Person {
    let homes: [Home]
}

// sourcery: case_properties
enum Device {
    case light(on: Bool)
    case powerSwitch
    case blinds
    case heating
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
