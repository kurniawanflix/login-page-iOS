//
//  LoginView.swift
//  login-page
//
//  Created by Muhammad David Kurniawan on 12/02/23.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Image("header")
                        .resizable()
                        .frame(width: 586, height: 406)
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            Text("Login Account")
                                .font(.custom("Outfit-Medium", size: 24))
                                .bold()
                                .padding(.top, -115)
                                .padding(.trailing, 10)
                            Image(systemName: "person")
                                .padding(.top, -110)
                                .padding(.trailing, 200)
                        }
                        Text("Welcome back")
                            .font(.custom("Outfit-Medium", size: 18))
                            .padding(.top, -90)
                            .padding(.trailing, 270)
                    }
                    HStack{
                        Text("Mini")
                            .font(.custom("Outfit-Medium", size: 60))
                            .bold()
                        Text("Shop")
                            .font(.custom("Outfit-Medium", size: 60))
                            .bold()
                            .foregroundColor(.yellow)
                    }
                    .padding(.top, 200)
                }
                .ignoresSafeArea()
                VStack(spacing: 15){
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 328, height: 48)
                        .overlay(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.black, style: (StrokeStyle(lineWidth: 1))))
                        .font(.custom("Outfit-Regular", size: 18))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 328, height: 48)
                        .overlay(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                        .font(.custom("Outfit-Regular", size: 18))
                    NavigationLink{EmptyView()}label: {
                        Text("forgot password?")
                            .padding(.leading, 200)
                            .foregroundColor(.black)
                            .font(.custom("Outfit-Regular", size: 14))
                    }
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Login")
                            .font(.custom("Outfit-Regular", size: 20))
                    }
                    .padding()
                    .frame(width: 328, height: 48)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    
                    HStack{
                        VStack{
                            Divider()
                                .frame(width: 100)
                        }
                        Text("Or signup with")
                            .font(.custom("Outfit-Regular", size: 14))
                            .foregroundColor(.gray)
                        VStack{
                            Divider()
                                .frame(width: 100)
                        }
                        
                    }
                    HStack(spacing: 20){
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Image("google")
                                .resizable()
                                .frame(width: 20, height: 20).padding()
                                .background(Color.white)
                                .cornerRadius(5)
                        }
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Image("facebook")
                                .resizable()
                                .frame(width: 20, height: 20).padding()
                                .background(Color.white)
                                .cornerRadius(5)
                        }
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Image("apple")
                                .resizable()
                                .frame(width: 20, height: 20).padding()
                                .background(Color.white)
                                .cornerRadius(5)
                        }
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    }
                    .padding()
                    HStack{
                        Text("Not register yet?")
                            .font(.custom("Outfit-Regular", size: 14))
                            .foregroundColor(.gray)
                        NavigationLink{
                            EmptyView()}label: {
                                Text("Create Account")
                                    .font(.custom("Outfit-Medium", size: 14))
                                    .foregroundColor(.black)
                            }
                        
                    }
                    
                }
                Spacer(minLength: 100)
            }
            
        }
        
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
