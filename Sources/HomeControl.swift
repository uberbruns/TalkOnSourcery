protocol AutoMock { }

class HomeControl: AutoMock {

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