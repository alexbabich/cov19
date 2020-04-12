//
//  HeaderView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("COVID-19")
                .font(.title)
                .fontWeight(.heavy)
            
            Text("Screening Tool")
                .font(.title)
                .fontWeight(.heavy)
        }
    }
}

