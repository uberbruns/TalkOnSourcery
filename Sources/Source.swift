import Foundation

// GLOBALE ENVIRONMENT

struct GlobalEnvironment:
    // sourcery:inline:Global.Environment
    // sourcery:end
    var database: DatabaseProtocol = Database()
    var locationManager: LocationManagerProtocol = LocationManager()
}



// sourcery:build_environment
class TrackingService {

    private struct Environment {
        let locationManager: LocationManagerProtocol
    }

    // sourcery:inline:TrackingService.Environment.Properties
    typealias EnvironmentProtocol = TrackingServiceEnvironmentProtocol
    private let environment: EnvironmentProtocol
    private var locationManager: LocationManagerProtocol { environment.locationManager }
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


// sourcery:build_environment
class SettingsService {

    private struct Environment {
        let database: DatabaseProtocol
    }

    // sourcery:inline:SettingsService.Environment.Properties
    typealias EnvironmentProtocol = SettingsServiceEnvironmentProtocol
    private let environment: EnvironmentProtocol
    private var database: DatabaseProtocol { environment.database }
    // sourcery:end

    init(env: SettingsServiceEnvironmentProtocol) {
        // sourcery:inline:SettingsService.Environment.Init
        self.env = env
        self.database = env.database
        // sourcery:end
    }

    func save() {
        dump(database.path)
    }
}


// sourcery:inline:SettingsService.Environment.Protocol
protocol SettingsServiceEnvironmentProtocol {
    var database: DatabaseProtocol { get }
}
// sourcery:end
