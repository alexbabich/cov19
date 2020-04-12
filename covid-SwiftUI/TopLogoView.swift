//
//  TopLogoView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

// MARK: -- new .swift file
struct TopLogoView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 38)
            
            Rectangle()
                .frame(width: 2, height: 44)
            
            Circle()
                .frame(width: 38)
            Spacer()
        }
        .padding(.vertical, -500)
    }
}
