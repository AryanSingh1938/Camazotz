//
//  ContentView.swift
//  Masala_Dosa
//
//  Created by Shambhavi Verma on 07/04/26.
//
import UIKit
import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showError: Bool = false
    @State private var showErrorUsername: Bool = false
    @State private var showErrorPassword: Bool = false
    @State private var isLoggedIn: Bool = false
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("cloud")
                    .resizable() .scaledToFill()
                    .ignoresSafeArea()
                
                VStack (spacing:10){
                    
                    Image("Image 1")
                        .resizable() .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .shadow(color: .white, radius: 50)
                        .padding(.top, 60)
                        .padding(.horizontal)
                    
                    Text("CRONOS")
                        .font(.system(size: 48, weight: .medium , design: .serif))
                        .frame(width: 230, height: 45)
                    
                    VStack(spacing: 20) {
                        Text("USER LOGIN")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .bold()
                            .foregroundColor(.black)
                        
                        
                        if showError {
                            Text("Please enter username and password")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.red.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        if showErrorUsername {
                            Text("Please Enter Username")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.red.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        if showErrorPassword {
                            Text("Please Enter Password")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color.red.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(.blue)
                                .font(.title)
                            
                            TextField("Username", text: $username)
                                .padding(20)
                                .background(Color.white)
                                .cornerRadius(12)
                                .foregroundColor(.black)
                                .frame(width: 320)
                        }
                        
                        HStack {
                            Image(systemName: "lock.fill")
                                .foregroundColor(.blue)
                                .font(.title)
                            
                            
                            SecureField("Password", text: $password)
                                .padding(20)
                                .background(Color.white)
                                .cornerRadius(12)
                                .foregroundColor(.black)
                                .frame(width: 320)
                        }
                        
                        Button(action: loginUser) {
                            Text("Login")
                                .font(.headline)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                        
                        Button("Forgot Password"){}
                            .foregroundStyle(Color.white)
                            .font(.system(size: 15, weight: .medium,design: .rounded))
                        
                    }
                    .frame(width: 370, height: 370)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.gray.opacity(0.4))
                                .shadow(color: .black.opacity(0.9), radius: 20)
                        )
                        .padding(.horizontal, 20)
                    
                    Text("Between sun and storm.")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .bold()
                }
            }
            
            
            .navigationDestination(isPresented: $isLoggedIn) {
                ContentView2()
            }
        }}
    
    func loginUser() {
        if username.isEmpty && password.isEmpty  {
            showError = true
            showErrorPassword = false
            showErrorUsername = false
        }
        else if username.isEmpty {
            showErrorUsername = true
            showError = false
            showErrorPassword = false
        }
        else if password.isEmpty {
            showErrorPassword = true
            showError = false
            showErrorUsername = false
        }
        else {
            showError = false
            isLoggedIn = true
            showErrorPassword = false
            showErrorUsername = false
        }
        
    }
    
}

