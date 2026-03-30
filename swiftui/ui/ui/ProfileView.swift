//
//  ProfileView.swift
//  ui
//
//  Created by Anisa on 20.02.2026.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isDarkMode: Bool = false
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundStyle(.gray)
                .padding(.top, 40)
            
            Text("Anisa")
                .font(.system(.title3, design: .rounded, weight: .bold))
            Text("Applied iOS Dev")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 18)
            
            Spacer()
            
            Toggle(isOn: $isDarkMode) {
                Text("Dark Mode")
                    .font(.headline)
            }
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal, 20)
            
            HStack(spacing: 20) {
                Button("GitHub") {print("Git tapped")}
                Button("Projects") {print("Projects tapped")}
                Button("Contact") {print("Contact tapped")}
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 40)
        }
    }
}

//#Preview {
//    ProfileView(isDarkMode: true)
//}
