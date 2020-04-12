//
//  TextInfoView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct TextInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("some strange text like lorem ipsumsome")
                .padding(.bottom)
                .lineLimit(nil)
            
            Text("some strange text like lorem ipsumsome strange text like lorem ipsumsome strange text like lorem ipsumsome strange")
        }
        .frame(width: UIScreen.main.bounds.width / 2.5)
//            .frame(maxWidth: .infinity)
    }
}

struct TextInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TextInfoView()
    }
}
