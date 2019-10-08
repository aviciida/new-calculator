//
//  exports.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

@_exported import Mew
@_exported import DeviceKit
@_exported import Logging

public extension Device {
    var infoDescription: String {
        return """


        -----------------------Device Information-----------------------


        Model               : \(description)
        Name                : \(name ?? "")
        Battery State       : \(batteryState.map { "\($0)" } ?? "Unknown")
        Guided Access       : \(isGuidedAccessSessionActive)
        Screen Brightness   : \(screenBrightness)


        ----------------------------------------------------------------

        """
    }
}
