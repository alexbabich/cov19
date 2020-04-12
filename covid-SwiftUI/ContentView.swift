//
//  ContentView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 12.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                TopInfoView()
                
                ForEach(0 ..< 4) { item in
                    NavigationLink(destination: Text("Coming")) {
                        HStack {
                            ZStack {
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: 44)
                                
                                Image(systemName: "staroflife.fill")
                                    .foregroundColor(.white)
                            }
                            .padding(.trailing)
                            
                            VStack(alignment: .leading) {
                                Text("About COVID-19")
                                    .fontWeight(.bold)
                                
                                Text("""
An up-to-date rundom of the virus
and its symptoms
""")
                            }
                        }
                    }
                }
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








