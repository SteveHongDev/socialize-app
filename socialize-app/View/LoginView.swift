//
//  LoginView.swift
//  socialize-app
//
//  Created by 홍성범 on 2022/03/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    let defaultColor = Color(red: 85 / 255, green: 138 / 255, blue: 237 / 255, opacity: 1.0)
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Socialize")
                    .fontWeight(.bold)
                    .font(.system(size: 48))
                    .foregroundColor(defaultColor)
                Image("socialize-logo")
                VStack(alignment: .leading) {
                    ZStack {
                        Image("rectangle")
                        HStack {
                            Image(systemName: "at")
                                .padding(.horizontal, 5)
                                .foregroundColor(defaultColor)
                            TextField("Email", text: $username)
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding()
                    ZStack {
                        Image("rectangle")
                        HStack {
                            Image(systemName: "lock.fill")
                                .padding(.horizontal, 5)
                                .foregroundColor(defaultColor)
                            SecureField("Password", text: $password)
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding()
                }
                .padding()
                
                NavigationLink {
                    ForgotPasswordView()
                } label: {
                    Text("Forgot Password?")
                }
                
                Button {
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(defaultColor)
                            .cornerRadius(13)
                        Text("Log In")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 15)
                }
                
                Divider()
                    .frame(width: 330, height: 1.0)
                    .background(.black)
                    
                HStack {
                    Text("You don't have your account? ")
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Register Now!")
                            .fontWeight(.semibold)
                    }

                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
