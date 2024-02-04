//
//  ContentView.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 01.02.24.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                VStack(spacing: 0) {
                    MenuHeaderView(cityVM: cityVM)
                        .padding(.vertical)
                    ScrollView(showsIndicators: false) {
                        CityView(cityVM: cityVM)
                    }
                }.padding(.top, 30)
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5411764706, green: 0.7607843137, blue: 0.9764705882, alpha: 1)), Color(#colorLiteral(red: 0.4196078431, green: 0.5333333333, blue: 0.937254902, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    MainView()
}
