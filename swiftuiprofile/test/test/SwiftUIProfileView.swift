//
//  SwiftUIProfileView.swift
//  test
//
//  Created by Anisa on 22.02.2026.
//

import SwiftUI

struct SwiftUIProfileView: View {
    @State private var isDarkMode = false
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundStyle(.gray)
                .padding(.top, 40)
            Text("Anisa")
                .font(.title)
                .fontWeight(.bold)
            Text("iOS Dev")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            Spacer()
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
                    .font(.headline)
            }
            .padding()
            .background(Color.blue.opacity(0.1))
            .clipShape(.capsule)
            .padding(.horizontal, 10)
            
            HStack(spacing: 20) {
                Button("Git") {print("Git Button Tapped")}
                Button("Twitter") {print("Twitter Button Tapped")}
                Button("Linkedin") {print("Linkedin Button Tapped")}
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isDarkMode ? Color.black : Color.white)
        .foregroundStyle(isDarkMode ? .white : .black)
    }
}
