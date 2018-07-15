import Foundation

// GLOBALE ENVIRONMENT

struct GlobalEnvironment:
    // sourcery:inline:Global.Environment
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
    private let environment: EnvironmentProtocol
    private var locationManager: LocationManagerProtocol { return environment.locationManager }
    // sourcery:end

    init(environment: EnvironmentProtocol) {
        self.environment = environment
        let settingService = SettingsService(environment: environment)
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
    private let environment: EnvironmentProtocol
    private var database: DatabaseProtocol { return environment.database }
    // sourcery:end

    init(environment: EnvironmentProtocol) {
        self.environment = environment
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
