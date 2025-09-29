//
//  ContentView.swift
//  TH03_Evelin Alim Natadjaja
//
//  Created by student on 29/09/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            LocationView()
                .tabItem {
                    Label("Location", systemImage: "mappin.and.ellipse")
                }
            StatisticView()
                .tabItem {
                    Label("Statistic", systemImage: "chart.bar")
            }
            SettingsView()
                .tabItem {
                    Label("Setting", systemImage: "gearshape")
            }
        }
    }
}
struct HomeView: View {
    @State private var searchbar:String = ""
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Good Morning,")
                        .font(.title2)
                    Text("Mikaela")
                        .font(.largeTitle)
                        .bold()
                }
                Spacer()
                Image("nailong")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
            }
            .padding(20)
            
            TextField("Search", text: $searchbar)
                .padding(12)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.5), radius: 5)
                .padding(15)
            
            VStack {
                VStack{
                    Text("Today's Goal")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    HStack{
                        VStack{
                            Image(systemName: "figure.walk")
                                .resizable()
                                .frame(width: 40, height: 60)
                                .foregroundColor(.white)
                            
                            Text("4 Miles")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("@Thames Route")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 15)
                        .background(Color.white.opacity(0.2)).cornerRadius(20)
                        
                        VStack{
                            Image(systemName: "car.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding(.vertical, 10)
                                .foregroundColor(.white)
                            Text("2 Miles")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Text("@River Lea")
                                .foregroundColor(.white)
                        }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 35)
                        .background(Color.white.opacity(0.2)).cornerRadius(20)
                        .padding(.leading, 15)
                    }
                }
            }
            .frame(width: 375, height: 250)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.cyan, Color.pink.opacity(0.7), Color.red]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
                )
            )
            .cornerRadius(20)
            .shadow(color: Color.gray.opacity(0.5), radius: 5)
            
            VStack{
                HStack{
                    VStack{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.top, 10)
                            .padding(.trailing, 105)
                            .foregroundColor(.purple)
                        Text("68 Bpm")
                            .font(.title3)
                            .padding(.leading, 60)
                            .padding(.bottom, 10)
                    }
                    .frame(width:135, height:50)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    VStack{
                        Image(systemName: "flame.fill")
                            .resizable()
                            .frame(width: 25, height: 30)
                            .padding(.top, 10)
                            .padding(.trailing, 105)
                            .foregroundColor(.orange)
                        Text("0 Kcal")
                            .font(.title3)
                            .padding(.leading, 60)
                            .padding(.bottom, 10)
                    }
                    .frame(width:135, height:50)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                }
                
                HStack{
                    VStack{
                        Image(systemName: "scalemass.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.top, 10)
                            .padding(.trailing, 105)
                            .foregroundColor(.green)
                        Text("73 Kg")
                            .font(.title3)
                            .padding(.leading, 60)
                            .padding(.bottom, 10)
                    }
                    .frame(width:135, height:50)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                    VStack{
                        Image(systemName: "moon.zzz.fill")
                            .resizable()
                            .frame(width: 25, height: 30)
                            .padding(.top, 10)
                            .padding(.trailing, 105)
                            .foregroundColor(.blue)
                        Text("6.2 Hr")
                            .font(.title3)
                            .padding(.leading, 60)
                            .padding(.bottom, 10)
                    }
                    .frame(width:135, height:50)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                }
            }
            
            
        }
        
        .padding(.vertical, 30)
        .background(Color.gray.opacity(0.1))
    }
}

struct LocationView: View {
    var body: some View {
        Text("📍 Location")
    }
}

struct StatisticView: View {
    var body: some View {
        Text("📊 Statistics")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("⚙️ Settings")
    }
}

#Preview {
    ContentView()
}
