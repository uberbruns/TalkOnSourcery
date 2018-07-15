import Foundation

// GLOBALE ENVIRONMENT

struct GlobalEnvironment:
    // sourcery:inline:Global.Environment
    AnyEnvironment,
    SettingsServiceEnvironmentProtocol,
    TrackingServiceEnvironmentProtocol {
    // sourcery:end
    var database: DatabaseProtocol = Database()
    var locationManager: LocationManagerProtocol = LocationManager()
}



// sourcery:build_environment
class TrackingService {

    private struct Environment {
        let includesSettingsService: SettingsServiceEnvironmentProtocol
        let locationManager: LocationManagerProtocol
    }

    // sourcery:inline:TrackingService.Environment.Properties
    typealias EnvironmentProtocol = TrackingServiceEnvironmentProtocol

    private let env: EnvironmentProtocol
    private let locationManager: LocationManagerProtocol
    // sourcery:end

    init(env: EnvironmentProtocol, withLimit limit: Int) {
        // sourcery:inline:TrackingService.Environment.Init
        self.env = env
        self.locationManager = env.locationManager
        // sourcery:end

        let settingService = SettingsService(env: env)
        settingService.save()
    }
}

// sourcery:inline:TrackingService.Environment.Protocol
protocol TrackingServiceEnvironmentProtocol: SettingsServiceEnvironmentProtocol {
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

    private let env: EnvironmentProtocol
    private let database: DatabaseProtocol
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
