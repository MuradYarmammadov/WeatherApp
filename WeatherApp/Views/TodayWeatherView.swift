//
//  TodayWeatherView.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 03.02.24.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        VStack(spacing:10){
            Text("Today")
                .font(.largeTitle)
                .bold()
            
            HStack(spacing: 20) {
                LottieView(name: cityVM.getLottieAnimationFor(icon: cityVM.weatherIcon))
                    .frame(width: 100, height: 100, alignment: .center)

                VStack(alignment: .leading) {
                    Text("\(cityVM.temperature)℃")
                        .font(.system(size: 42))
                    Text("\(cityVM.conditions)")
                }
            }
            
            HStack {
                Spacer()
                widgetView(
                    image: "wind",
                    color: .green,
                    title: "\(cityVM.winSpeed)")
                Spacer()
                widgetView(
                    image: "drop.fill",
                    color: .blue,
                    title: "\(cityVM.humidity)")
                Spacer()
                widgetView(
                    image: "umbrella.fill",
                    color: .red,
                    title: "\(cityVM.rainChances)")
                Spacer()
            }
        }
        .padding()
        .foregroundStyle(.white)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]),startPoint: .top, endPoint: .bottom)).opacity(0.6))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    
    private func widgetView(image: String, color: Color, title: String) -> some View {
        VStack {
            Image(systemName: image)
                .padding()
                .font(.title)
                .foregroundStyle(color)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            
            Text(title)
        }
    }
}

#Preview {
    TodayWeatherView(cityVM: CityViewViewModel())
}
