import Foundation


// MARK: - Sample Dependencies
// MARK: Database

protocol DatabaseProtocol {
    var path: String { get }
}

class Database: DatabaseProtocol {
    var path: String

    init(path: String) {
        self.path = path
    }
}


// MARK: Location Manager

protocol LocationManagerProtocol { }

class LocationManager: LocationManagerProtocol { }
