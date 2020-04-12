//
//  TextAndImageInfoView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct TextAndImageInfoView: View {
    var body: some View {
        HStack {
            TextInfoView()
            
            Image("person")
                .padding()
                .scaleEffect(1.8)
                .offset(x: 70, y: -20)
        }
    }
}

struct TextAndImageInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageInfoView()
    }
}
