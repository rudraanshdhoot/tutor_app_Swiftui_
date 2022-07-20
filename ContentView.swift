//
//  ContentView.swift
//  chill
//
//  Created by Rudraansh Dhoot on 09/06/2022.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var columns_grid = [GridItem(), GridItem()]
    
    var body: some View {
        ZStack {
            Image("tutorbg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .offset(y: -60)
                VStack {
                    HStack(spacing: 0) {
                        VStack(alignment: .leading) {
                            Text("Good Morning,").font(.title).fontWeight(.semibold).foregroundColor(.white)
                            .padding([.top, .leading, .trailing])
                            Text("Luke")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding([.leading, .trailing])
                        }
                        Spacer()
                        HStack(spacing: -15) {
                            Image(systemName: "bell")
                                .foregroundColor(.white)
                                .font(.title)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white.opacity(0.4))
                                        .frame(width: 50, height: 50)
                                    
                            )
                        
                        Image("pfp")
                            .resizable()
                            .scaledToFit()
                            .mask(RoundedRectangle(cornerRadius: 10)
                                .frame(width: 50, height: 50))
                                  }
                    }
                    Spacer()
                        .frame(height: 720)
                }
            
            VStack {
                Spacer()

                RoundedRectangle(cornerRadius: 50)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.23)
                    .foregroundColor(.white)
                    .overlay(
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Trending Topics")
                                    .font(.title)
                                    .padding()
                                .fontWeight(.bold)
                                Spacer()
                                Text("Show all")
                                    .padding()
                                    .foregroundColor(.gray)
                                    .fontWeight(.semibold)
                            }
                            
                            trending
                                .padding(.bottom)
                            
                            Text("Courses")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.leading)
                            
                            Text("Recommendations for you")
                                .foregroundColor(.gray)
                                .padding(.leading)
                                .padding(.top, -10)
                            
                            LazyVGrid(columns: columns_grid) {
                                
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 180, height: 170)
                                        .foregroundColor(Color(UIColor.systemBlue).opacity(0.19))
                                        .overlay(
                                            VStack(alignment: .leading, spacing: 12) {
                                                Image(systemName: "swift")
                                                    .foregroundColor(.blue)
                                                    .font(.title)
                                                    .background(RoundedRectangle(cornerRadius: 12)
                                                        .frame(width: 50, height: 50)
                                                        .foregroundColor(.blue.opacity(0.3))
                                                    )
                                                    .padding(.leading)
                                                
                                                Text("Programming")
                                                    .font(.title2)
                                                    .fontWeight(.semibold)
                                                    .padding()
                                            }
                                        )
                                
                                
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 180, height: 170)
                                        .foregroundColor(Color(UIColor.systemBlue).opacity(0.19))
                                        .overlay(
                                            VStack(alignment: .leading, spacing: 12) {
                                                Image(systemName: "pencil.and.outline")
                                                    .foregroundColor(.blue)
                                                    .font(.title)
                                                    .background(RoundedRectangle(cornerRadius: 12)
                                                        .frame(width: 50, height: 50)
                                                        .foregroundColor(.blue.opacity(0.3))
                                                    )
                                                    .padding(.leading)
                                                
                                                Text("Digital Art       ")
                                                    .font(.title2)
                                                    .fontWeight(.semibold)
                                                    .padding()
                                            }
                                        )
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 180, height: 170)
                                    .foregroundColor(Color(UIColor.systemBlue).opacity(0.19))
                                    .overlay(
                                        VStack(alignment: .leading, spacing: 12) {
                                            Image(systemName: "newspaper")
                                                .foregroundColor(.blue)
                                                .font(.title)
                                                .background(RoundedRectangle(cornerRadius: 12)
                                                    .frame(width: 50, height: 50)
                                                    .foregroundColor(.blue.opacity(0.3))
                                                )
                                                .padding(.leading)
                                            
                                            Text("Copywriting    ")
                                                .font(.title2)
                                                .fontWeight(.semibold)
                                                .padding()
                                        }
                                    )
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 180, height: 170)
                                    .foregroundColor(Color(UIColor.systemBlue).opacity(0.19))
                                    .overlay(
                                        VStack(alignment: .leading, spacing: 12) {
                                            Image(systemName: "globe")
                                                .foregroundColor(.blue)
                                                .font(.title)
                                                .background(RoundedRectangle(cornerRadius: 12)
                                                    .frame(width: 50, height: 50)
                                                    .foregroundColor(.blue.opacity(0.3))
                                                )
                                                .padding(.leading)
                                            
                                            Text("Translation     ")
                                                .font(.title2)
                                                .fontWeight(.semibold)
                                                .padding()
                                        }
                                    )
                            }
                        }
                    )
            }
        }
    }
}

extension ContentView {
    
    var trending: some View {
        VStack(spacing: 25) {
            HStack(spacing: UIScreen.main.bounds.width / 11) {
                Text("#literature")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.black)
                    .frame(width: 100, height: 30))
                
                    Text("#development")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.black)
                        .frame(width: 140, height: 30))
                
                    Text("#wwdc22")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.black)
                        .frame(width: 100, height: 30))
                
            }
            
            HStack(alignment: .center, spacing: 40) {
                Text("#iosdevelopers")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.black)
                    .frame(width: 150, height: 30))
                    .padding(.leading, 20)
                
                    Text("#findyourinternship")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.black)
                        .frame(width: 180, height: 30))
                Spacer()
            }
        }
        
    }
    
}

struct Active: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

var data: [Active] = [
    .init(type: "monday", count: 6),
    .init(type: "tuesday", count: 4),
    .init(type: "wednesday", count: 4),
    .init(type: "thursday", count: 5),
    .init(type: "friday", count: 4),
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
