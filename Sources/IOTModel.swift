protocol Person {
    let name: String
}

struct User: Person {
    let homes: [Home]
}

enum Device {
    case light
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
