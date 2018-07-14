//sourcery: mock
protocol HomeControlProtocol {
    func add(device: Device)
    func remove(device: Device)
    func absenceMode(enabled: Bool)
}

//sourcery: test
class HomeControl: HomeControlProtocol {

    private(set) var home: Home
    
    init(home: Home) {
        self.home = home
    }

    func add(device: Device) {
        // Add device to home
    }

    func delete(device: Device) {
        // Remove device from home
    }

    func absenceMode(enabled: Bool) {
        // Enable/disable absence mode
    }
}