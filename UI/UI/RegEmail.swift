//
//  SwiftUIView.swift
//  UI
//
//  Created by Aditya kumar on 06/04/21.
//

import SwiftUI

let lighGreayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)



struct RegEmail: View {
    @State var email: String = ""
    var body: some View {
            ZStack {
                lighGreayColor.edgesIgnoringSafeArea(.all)
                VStack{
                    register()
                    registerId(emailId: $email).padding(.bottom, 30)
                    Text("Already have a account?")

                    Text("Sign in")
                        .padding(.bottom, 10)
                        .foregroundColor(.blue)
                    //                    Button(action: {print("button pressed")}) {
                    //                        loginButtonContent()}.padding(.top, 10)
                    NavigationLink(
                        destination: RegPass(),
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
        .accentColor(Color(.label))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegEmail()
    }
}

struct register: View {
    var body: some View {
        Text("New Account")
            .navigationBarTitle("Register", displayMode: .inline)
            .font(.title3)
            .foregroundColor(.black)
        Text("Start entering your email")
            .font(.title)
            .foregroundColor(.gray)
        Text("address below")
            .font(.title)
            .foregroundColor(.gray)
            .padding(.bottom, 80)
    }
}

struct registerId: View {
    @Binding var emailId: String
    var body: some View {
        TextField("UserName", text: $emailId)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
    }
}
