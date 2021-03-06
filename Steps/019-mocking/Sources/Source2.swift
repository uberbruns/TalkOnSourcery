//sourcery: mock
protocol HomeControlProtocol {
    func add(device: Device)
    func remove(device: Device)
    func absenceMode(enabled: Bool)
}


class HomeControl: HomeControlProtocol {

    private(set) var home: Home
    
    init(home: Home) {
        self.home = home
    }

    func add(device: Device) {
        // Add device to home
    }

    func remove(device: Device) {
        // Remove device from home
    }

    func absenceMode(enabled: Bool) {
        // Enable/disable absence mode
    }
}