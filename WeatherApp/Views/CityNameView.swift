//
//  CityNameView.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 03.02.24.
//

import SwiftUI

struct CityNameView: View {
    
    var city: String
    var date: String
    
    var body: some View {
        HStack{
            VStack(alignment: .center, spacing: 10){
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CityNameView(city: "Moscow", date: "31.31.31")
}
