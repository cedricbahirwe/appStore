//
//  ContentView.swift
//  JR
//
//  Created by Cedric Bahirwe on 8/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack(alignment: .top) {
                        Color(red: 0.824, green: 0.824, blue: 0.824)
                            .edgesIgnoringSafeArea([.top, .bottom])
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20) {
                            Image("placeholder")
                                .resizable()
                                .aspectRatio(3/2, contentMode: .fit)
                            VStack(alignment: .leading,spacing: 10) {
                               Text("xTitle of BlogPost Guide Text!")
                                .font(.system(size: 25, weight: .heavy, design: .rounded))
                                
                                Text("xJuly 20, 2020")
                                .font(.system(size: 20, weight: .heavy, design: .rounded))
                                    .padding([.horizontal, .horizontal])
                                
                                Text("xBlog post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post info post infopost info post info post info post info post info ...")
                                    .font(.system(size: 20, weight: .regular, design: .default))
                                    .padding(.horizontal)
                                
                                Image("placeholder.purple")
                                    .resizable()
                                    .aspectRatio(3/2, contentMode: .fit)
                                    .padding(.bottom, 30)
                                
                            }
//                            .frame(width: geometry.size.width - 20)
                                .padding(.horizontal)
                            
                        }
                        
                        
                    }
                    
                    
                    BlogTitleHeader()
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BlogTitleHeader: View {
    var body: some View {
        HStack {
            Text("Jennifer Rickard")
                .italic()
                
                .font(.system(size: 20, weight: .bold, design: .default))
                
                .shadow(color: Color.gray, radius: 2, x: 1, y: 4)
            Spacer()
            Image(systemName: "rectangle.grid.1x2.fill")
            
        }
        .background(Color.clear)
        .padding(.horizontal)
            
        .foregroundColor(Color.blue)
    }
}


extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}
