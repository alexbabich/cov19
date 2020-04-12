//
//  TopInfoView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct TopInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TopLogoView()
            HeaderView()
            TextAndImageInfoView()
            VButtons()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color(.systemBackground), Color(.systemGray4)]), startPoint: .top, endPoint: .bottom))
        .listRowInsets(EdgeInsets())
    }
}

// new file

struct VButtons: View {
    let buttonLabels = ["Start Screening", "View Previous Results"]
    
    var body: some View {
        VStack {
            ForEach(buttonLabels, id: \.self) { label in
                Button(action: {
    //                do stuff
                }) {
                    Text(label)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding(.vertical, 10)
                }
            }
        }
        .padding(.top, 25)
    }
}

