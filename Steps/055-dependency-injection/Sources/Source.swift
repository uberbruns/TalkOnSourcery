import Foundation

// sourcery:build_environment
class TrackingService {

    private struct Environment {
        let locationManager: LocationManagerProtocol
    }
}

// sourcery:inline:TrackingService.Environment.Protocol
// sourcery:end