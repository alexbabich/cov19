//
//  ContentView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            List {
                TopInfoView(isShowing: $isShowing)
                .sheet(isPresented: $isShowing) {
                    ResultsView(isShowing: self.$isShowing)
                }
                MainListView()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








