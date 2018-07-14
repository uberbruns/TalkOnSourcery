//
//  main.swift
//  IOTHome
//
//  Created by Karsten Bruns on 14.07.18.
//  Copyright © 2018 Karsten Bruns. All rights reserved.
//

import Foundation

let device = Device(id: 123, name: "Light", kind: .light(on: true, brightness: 0.5))


if case let .light(brightness: brightness) = device.kind {
    print(brightness)
}


if let brightness = device.kind.light?.brightness {
    print(brightness)
}
