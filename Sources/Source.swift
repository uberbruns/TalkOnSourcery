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
        let includesSettingsService: SettingsServiceEnvironmentProtocol
        let locationManager: LocationManagerProtocol
    }

    // sourcery:inline:TrackingService.Environment.Properties
    // sourcery:end

    init(env: EnvironmentProtocol, withLimit limit: Int) {
        // sourcery:inline:TrackingService.Environment.Init
        // sourcery:end

        let settingService = SettingsService(env: env)
        settingService.save()
    }
}

// sourcery:inline:TrackingService.Environment.Protocol
// sourcery:end


// sourcery:build_environment
class SettingsService {

    private struct Environment {
        let database: DatabaseProtocol
    }

    // sourcery:inline:SettingsService.Environment.Properties
    // sourcery:end

    init(env: SettingsServiceEnvironmentProtocol) {
        // sourcery:inline:SettingsService.Environment.Init
        // sourcery:end
    }

    func save() {
        dump(database.path)
    }
}


// sourcery:inline:SettingsService.Environment.Protocol
// sourcery:end
