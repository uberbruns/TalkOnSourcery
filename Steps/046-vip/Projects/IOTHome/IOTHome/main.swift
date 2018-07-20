//
//  main.swift
//  IOTHome
//
//  Created by Karsten Bruns on 14.07.18.
//  Copyright © 2018 Karsten Bruns. All rights reserved.
//

import Foundation

let device = Device(id: 123, name: "Light", kind: .light(status: .connected(reading: LightReading(state: .on(brightness: 0.5)))))


if case .light(.connected(let reading)) = device.kind, case .on(let brightness) = reading.state {
    print(brightness)
}



