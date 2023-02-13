//
//  ContentView.swift
//  login-page
//
//  Created by Muhammad David Kurniawan on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Image("header")
                        .resizable()
                        .frame(width: 586, height: 406)
                        .ignoresSafeArea()
                    Image("icon")
                        .resizable()
                        .frame(width: 319, height: 365)
                        .padding(.top, 150)
                }
                .ignoresSafeArea()
                VStack{
                    Text("Explore the App")
                        .font(.custom("Outfit-Medium", size: 20))
                        .font(.system(size: 20))
                    Text("Find your dream product, everything is available here!")
                        .padding(.top, 12)
                        .padding(.trailing, 50)
                        .padding(.leading, 50)
                        .multilineTextAlignment(.center)
                        .font(.custom("Outfit-Regular", size: 16))
                        .padding(.bottom, 60)
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Let's Start")
                            .font(.custom("Outfit-Medium", size: 20))
                    }
                    .padding()
                    .frame(width: 328, height: 48)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
