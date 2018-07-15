import Foundation

// sourcery:build_environment
class TrackingService {

    private struct Environment {
        let locationManager: LocationManagerProtocol
    }

    // sourcery:inline:TrackingService.Environment.Properties
    // sourcery:end

    init(env: EnvironmentProtocol, withLimit limit: Int) {
        // sourcery:inline:TrackingService.Environment.Init
        // sourcery:end
    }
}

// sourcery:inline:TrackingService.Environment.Protocol
// sourcery:end