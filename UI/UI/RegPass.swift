//
//  RegPass.swift
//  UI
//
//  Created by Aditya kumar on 06/04/21.
//

import SwiftUI

let lighGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct RegPass: View {
    @State var Pass: String = ""
    var body: some View {
            ZStack {
                lighGreayColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    
                    pass().offset(y:20)
                    ZStack(alignment: .trailing){
                    registerPass(Pass: $Pass)
                        .padding(.bottom, 30)
                        .offset(y:-15)
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 75, height: 45)
                            .foregroundColor(.white)
                            .overlay(Text("SHOW")
                                    .foregroundColor(.gray))
                            .padding(.trailing)
                            .offset(y:-29)
                        })
                        
                        
                    }
                    
                    Text("Already have a account?")
    
                    Text("Sign in")
                        .padding(.bottom, 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    NavigationLink(
                        destination: PhoneNo(),
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

struct RegPass_Previews: PreviewProvider {
    static var previews: some View {
        RegPass()
    }
}

struct pass: View {
    var body: some View {
        Text("")
           .navigationBarTitle("Create Password", displayMode: .inline)
            .font(.title3)
            .foregroundColor(.black)
        Text("Your Password must have at")
            .font(.title)
            .foregroundColor(.gray)
        Text("least 1 Symbol and 8 ")
            .font(.title)
            .foregroundColor(.gray)
        Text("or more Characters ")
            .font(.title)
            .foregroundColor(.gray)
            .padding(.bottom, 80)
    }
}

struct registerPass: View {
    @Binding var Pass: String
    var body: some View {
        SecureField("Password", text: $Pass)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
    }
}
