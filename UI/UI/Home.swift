//
//  Home.swift
//  UI
//
//  Created by Aditya kumar on 08/04/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
                   HomeView().tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
            CoursesTest().tabItem {
                        Image(systemName: "book.circle")
                        Text("Courses")
                    }
                    Profile().tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct greeting: View {
    var body: some View {
        Text("Hi, Antinio")
            .padding(.top, 30)
            .font(.system(size: 40))
        Text("what would you like to learn")
        Text("today? Search below.")
            .padding(.bottom, 30)
    }
}
    
struct HomeView: View {
    private func getScale(proxy: GeometryProxy) -> CGFloat {
        var scale: CGFloat = 1
        
        let x = proxy.frame(in: .global).minX
        
        let diff = abs(x - 32)
        if diff < 100 {
            scale = 1 + (100 - diff) / 500
        }
        
        return scale
    }
    @State var Search: String = ""
    
    var body: some View {
        
        ZStack{
            lighGreyColor.edgesIgnoringSafeArea(.all)
        VStack{
           
            greeting()
            ZStack{
                search(Search: $Search)
                    .padding()
            Image(systemName: "magnifyingglass")
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .offset( x: 140,y: 0)

            }.offset(y:-40)
            .padding(.bottom, 10)
            
            ScrollView {
                ZStack{
                ScrollView(.horizontal) {
                    HStack(spacing: 50) {
                        ForEach(0..<3) { num in
                            GeometryReader { proxy in
                                VStack {
                                            let scale = getScale(proxy: proxy)
                                            
                                            Image("a")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 150)
//                                                .overlay(
//                                                    RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
//                                                )
                                                .clipped()
                                                .cornerRadius(5)
                                                .shadow(radius: 5)
                                                .scaleEffect(CGSize(width: scale, height: scale))
                                                .animation(.easeOut(duration: 0.5))
                                                
                                            
//                                            Text("Wonder Woman 1984")
//                                                .padding(.top)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color(.label))
                                        }
                                   // })
                            }
                            .frame(width: 125, height: 300)
                        }
                    }.padding()
                }
                }
            }.offset(y:-30)
            
        }
        }
        
    }
}
}


struct Profile: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Profile")
            }
        }
    }
}

struct search: View {
    @Binding var Search: String
    var body: some View {
        TextField("Search", text: $Search)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
    }
}

struct StudyCourse: View {
    var body: some View {
        ZStack{
            VStack{
                Study()
            }
        }
    }
}


struct Study: View {
    var body: some View {
        Text("No Courses!")
            .font(.title3)
            .foregroundColor(.black)
        Text("Course a course from")
            .font(.title)
            .foregroundColor(.gray)
        Text("Course tab or use the button")
            .font(.title)
            .foregroundColor(.gray)
        Text("below to start it")
            .font(.title)
            .foregroundColor(.gray)
            .padding(.bottom, 80)
    }
}

