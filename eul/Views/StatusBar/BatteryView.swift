//
//  BatteryView.swift
//  eul
//
//  Created by Gao Sun on 2020/8/7.
//  Copyright © 2020 Gao Sun. All rights reserved.
//

import SwiftUI

struct BatteryView: View {
    var onSizeChange: ((CGSize) -> Void)?
    @EnvironmentObject var batteryStore: BatteryStore
    @EnvironmentObject var preferenceStore: PreferenceStore

    var texts: [String] {
        [batteryStore.charge.percentageString]
    }

    var body: some View {
        HStack(spacing: 6) {
            if preferenceStore.showIcon {
                BatteryIconView(isCharging: batteryStore.io.isCharging, charge: batteryStore.charge)
            }
            StatusBarTextView(texts: texts)
        }
    }
}
