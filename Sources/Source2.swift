import Foundation


// MARK: - Sample Dependencies
// MARK: Database

protocol DatabaseProtocol {
    var path: String { get }
}

class Database: DatabaseProtocol {
    var path = "/db"
}


// MARK: Location Manager

protocol LocationManagerProtocol { }

class LocationManager: LocationManagerProtocol { }
