//
//  AppStore.swift
//  JR
//
//  Created by Cedric Bahirwe on 8/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct AppStore: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct app: View {
    var appTitle: String
    var appDesc: String
    var appColor: Color
    var body: some View {
        HStack (alignment: .center, spacing: 14) {
            VStack {
                Rectangle()
                    .foregroundColor(appColor)
                    .frame(width: 68, height: 68)
                    .cornerRadius(14)
            }
            VStack (alignment: .leading, spacing: 8) {
                Text(appTitle)
                    .font(.body)
                Text(appDesc)
                    .font(.subheadline)
                    .foregroundColor(Color(UIColor.gray))
            }
            Spacer()
            VStack {
                Text("GET")
                    .foregroundColor(Color.blue)
                    .fontWeight(.semibold)
                    .padding(.top, 6)
                    .padding(.bottom, 6)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
            .background(Color(UIColor.secondarySystemFill))
            .cornerRadius(24)
        }
    }
}

struct largeFeature: View {
    var blueCategory: String
    var title: String
    var subTitle: String
    var featureColor: Color
    var body: some View {
        VStack (alignment: .leading) {
            VStack (alignment: .leading, spacing: 4) {
                Text(blueCategory.uppercased())
                    .foregroundColor(Color.blue)
                    .font(.caption)
                Text(title)
                    .font(.title)
                    .foregroundColor(Color(UIColor.label))
                Text(subTitle)
                    .font(.body)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            Rectangle()
                .foregroundColor(featureColor)
                .frame(width: 300, height: 200)
                .cornerRadius(8)
        }
    }
}

struct Screen: View {
    var body: some View {
        VStack (spacing: 32) {
            ScrollView(showsIndicators: false) {
                HStack {
                    Text("Apps")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                Divider()
                VStack (spacing: 14) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 14) {
                            largeFeature(
                                blueCategory: "Category",
                                title: "App Title",
                                subTitle: "App description here...",
                                featureColor: Color.pink
                            )
                            largeFeature(
                                blueCategory: "Category",
                                title: "App Title",
                                subTitle: "App description here...",
                                featureColor: Color.yellow
                            )
                        }
                    }
                    Divider()
                    HStack {
                        VStack (spacing: 14) {
                            HStack {
                                Text("New to iPhone?")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("See All")
                                    .foregroundColor(.blue)
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack (spacing: 20) {
                                    VStack {
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.blue
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.yellow
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.pink
                                        )
                                    }
                                    VStack {
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.green
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.purple
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.orange
                                        )
                                    }
                                }
                            }
                        }
                    }
                    Spacer()
                    HStack {
                        VStack (spacing: 14) {
                            HStack {
                                Text("Popular Apps")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("See All")
                                    .foregroundColor(.blue)
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack (spacing: 20) {
                                    VStack {
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.green
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.pink
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.yellow
                                        )
                                    }
                                    VStack {
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.orange
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.blue
                                        )
                                        Divider()
                                        app(
                                            appTitle: "App Name",
                                            appDesc: "App description...",
                                            appColor: Color.pink
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .frame(width: 375, height: 812)
        .background(Color(UIColor.systemBackground))
    }
}

struct AppStore_Previews: PreviewProvider {
    static var previews: some View {
        Screen()
    }
}
