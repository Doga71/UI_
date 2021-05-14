//
//  ContentView.swift
//  UI
//
//  Created by Aditya kumar on 06/04/21.
//

import SwiftUI

let lightGreayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var AuthDidFail: Bool = false;
    
    var body: some View {
        
        NavigationView {
            ZStack {
                lightGreayColor.edgesIgnoringSafeArea(.all)
                VStack{
                    login().offset(y: -10)
                    UserName(username: $username).offset(y:-10)
                    //                .padding(.bottom, 25)
                    ZStack(alignment: .trailing){
                    Password(password: $password)
                    if AuthDidFail {
                        Text("Information not Correct")
                            .offset(y:-10)
                            .foregroundColor(.red)
                    }
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 75, height: 45)
                            .foregroundColor(.white)
                            .overlay(Text("FORGOT")
                                        .foregroundColor(.gray))
                            .padding(.trailing)
                            .offset(y:-11)
                    })
                    }
                    NavigationLink(
                        destination: RegEmail(),
                        label: {
                            Text("CONTINUE")
                                .bold()
                                .frame(width: 280, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(15)
                        })
                    
                }
                .padding()
            }
        }
        .accentColor(Color(.label))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct login: View {
    var body: some View {
        Text("Log In")
//            .navigationBarTitle("Log In",displayMode: .inline)
        Text("Enter Your login Details to")
            .font(.title)
            .foregroundColor(.gray)
        Text("access your account")
            .font(.title)
            .foregroundColor(.gray)
            .padding(.bottom, 80)
    }
}



struct loginButtonContent: View {
    var body: some View {
        Text("CONTINUE")
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 60, alignment: .bottom)
            .background(Color.blue)
            .cornerRadius(15)
    }
}

struct UserName: View {
    @Binding var username: String
    var body: some View {
        TextField("UserName", text: $username)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
    }
}

struct Password: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.bottom, 25)
    }
}
