//
//  CityView.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 03.02.24.
//

import SwiftUI

struct CityView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        VStack{
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding(.horizontal)
            HourlyWeatherView(cityVM: cityVM)
                .padding(.vertical)
                .padding(.horizontal, 40)
            DailyWeatherView(cityVM: cityVM)
                .padding(.horizontal)
        }
    }
}

#Preview {
    ScrollView {
        CityView(cityVM: CityViewViewModel())
    }
}
