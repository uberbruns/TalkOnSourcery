import Foundation

// sourcery:build_environment
class TrackingService {

    private struct Environment {
        let locationManager: LocationManagerProtocol
    }

    // sourcery:inline:TrackingService.Environment.Properties
    typealias EnvironmentProtocol = TrackingServiceEnvironmentProtocol
    private let environment: EnvironmentProtocol
    private var locationManager: LocationManagerProtocol { return environment.locationManager }
    // sourcery:end

    init(environment: EnvironmentProtocol) {
        self.environment = environment
    }
}

// sourcery:inline:TrackingService.Environment.Protocol
protocol TrackingServiceEnvironmentProtocol {
    var locationManager: LocationManagerProtocol { get }
}
// sourcery:end

