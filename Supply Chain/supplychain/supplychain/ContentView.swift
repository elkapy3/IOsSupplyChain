//
//  ContentView.swift
//  supplychain
//
//  Created by Joel Kalonji on 1/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false

    var body: some View {
        NavigationView {
            ZStack {
                // Main content
                VStack {
                    HStack {
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                                .foregroundColor(.primary)
                        }
                        .padding(.leading, 16)
                        Spacer()
                        Text("SupplyFlow")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Spacer()
                    }
                    .padding(.top, 50)
                    .padding(.bottom, 20)
                    .background(Color(.systemGray6))
                    .shadow(radius: 5)

                    Spacer()

                    VStack(spacing: 20) {
                        Image(systemName: "globe")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.accentColor)
                        Text("Welcome to SupplyFlow!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                    }
                    .padding()

                    Spacer()
                }
                .navigationBarHidden(true)
                .background(Color(.systemBackground))
                .edgesIgnoringSafeArea(.all)

                // Side menu overlay
                if showMenu {
                    SideMenuView(showMenu: $showMenu)
                        .transition(.move(edge: .leading))
                }
            }
        }
    }
}

struct SideMenuView: View {
    @Binding var showMenu: Bool

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                // Navigate to Home
                self.showMenu = false
            }) {
                NavigationLink(destination: HomeView()) {
                    Label("Home", systemImage: "house")
                }
            }
            .padding(.top, 100)

            Button(action: {
                // Navigate to Merchandise
                self.showMenu = false
            }) {
                NavigationLink(destination: MerchandiseView()) {
                    Label("Merchandise", systemImage: "cart")
                }
            }
            .padding(.top, 20)

            Button(action: {
                // Navigate to Procurement
                self.showMenu = false
            }) {
                NavigationLink(destination: ProcurementView()) {
                    Label("Procurement", systemImage: "bag")
                }
            }
            .padding(.top, 20)

            Button(action: {
                // Navigate to Itineraries
                self.showMenu = false
            }) {
                NavigationLink(destination: ItinerariesView()) {
                    Label("Itineraries", systemImage: "map")
                }
            }
            .padding(.top, 20)

            Button(action: {
                // Navigate to Personnel
                self.showMenu = false
            }) {
                NavigationLink(destination: PersonnelView()) {
                    Label("Personnel", systemImage: "person.3")
                }
            }
            .padding(.top, 20)

            Button(action: {
                // Navigate to Settings
                self.showMenu = false
            }) {
                NavigationLink(destination: SettingsView()) {
                    Label("Settings", systemImage: "gear")
                }
            }
            .padding(.top, 20)

            Spacer()
        }
        .frame(maxWidth: 250, alignment: .leading)
        .background(Color(.systemGray6))
        .edgesIgnoringSafeArea(.all)
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}

