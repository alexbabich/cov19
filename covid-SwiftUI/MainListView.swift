//
//  MainListView.swift
//  covid-SwiftUI
//
//  Created by alex-babich on 15.04.2020.
//  Copyright © 2020 alex-babich. All rights reserved.
//

import SwiftUI

struct MainListView: View {
    let infoCells = [
        MainCellDdata(image: "staroflife.fill", color: .yellow, title: "About COVID-19 item 1", body: "An up-to-date rundom of the virus and its symptoms", aboutCellData: [
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff")]),
        MainCellDdata(image: "text.badge.plus", color: .green, title: "About COVID-19 item 2", body: "An up-to-date rundom of the virus and its symptoms", aboutCellData: [
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What You Can Do?", previewBody: "Same text Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What You Can Do?", previewBody: "Same text Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What You Can Do?", previewBody: "Same text Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What You Can Do?", previewBody: "Same text Lots of preview text and stuff", body: "Lots more text about stuff")]),
        MainCellDdata(image: "list.bullet.indent", color: .purple, title: "COVID-19 Testing item 3", body: "the virusand its symptoms", aboutCellData: [
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff")]),
        MainCellDdata(image: "app.fill", color: .orange, title: "COVID-19 Testing item 4", body: "the virusand its symptoms", aboutCellData: [
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff"),
            AboutCellData(image: "staroflife.fill", color: .yellow, title: "What is COVID-19?", previewBody: "Lots of preview text and stuff", body: "Lots more text about stuff")])
    ]
    
    var body: some View {
        ForEach(infoCells, id:\.self) { cell in
            NavigationLink(destination:
                AboutView(aboutData: cell.aboutCellData)) {
                HStack(alignment: .top) {
                    ZStack {
                        Circle()
                            .foregroundColor(cell.color)
                            .frame(width: 44, height: 44)
                        
                        Image(systemName: cell.image)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing)
                    
                    VStack(alignment: .leading) {
                        Text(cell.title)
                            .fontWeight(.bold)
                        
                        Text(cell.body)
                    }
                }
                .padding()
            }
            .frame(height: 120)
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .previewLayout(.sizeThatFits)
    }
}


struct MainCellDdata: Hashable {
    let image: String
    let color: Color
    let title: String
    let body: String
    let aboutCellData: [AboutCellData]
}

struct AboutCellData: Hashable {
    let image: String
    let color: Color
    let title: String
    let previewBody: String
    let body: String
}
