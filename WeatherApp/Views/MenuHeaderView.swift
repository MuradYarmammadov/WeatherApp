//
//  MenuHeaderView.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 03.02.24.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    @State private var searchTerm = "Moscow"
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.white)
            
            TextField("", text: $searchTerm)
            
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundStyle(.white)
        .padding()
        .background(ZStack (alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
    }
}

#Preview {
    MenuHeaderView(cityVM: CityViewViewModel())
}
