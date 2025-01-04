import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Main content
                ScrollView {
                    VStack(spacing: 20) {
                        // Search Functionality
                        SearchBarView()
                        
                        // Dashboard Overview
                        DashboardOverviewView()
                        
                        // Quick Access Shortcuts
                        QuickAccessShortcutsView()
                        
                        // Recent Notifications Panel
                        RecentNotificationsView()
                        
                        // Action Buttons
                        ActionButtonsView()
                        
                        // Dynamic Content Display
                        DynamicContentDisplayView()
                        
                        // Navigation Hub
                        NavigationHubView()
                        
                        // Customizable Widgets
                        CustomizableWidgetsView()
                        
                        // Help Section Shortcut
                        HelpSectionShortcutView()
                        
                        // Refresh Button
                        RefreshButtonView()
                    }
                    .padding()
                }
                .navigationTitle("Home")
                .disabled(showMenu) // Disable interaction when menu is open
                
                // Side menu overlay
                if showMenu {
                    SideMenuView(showMenu: $showMenu)
                        .transition(.move(edge: .leading))
                }
            }
            .gesture(
                DragGesture()
                    .onEnded { value in
                        if value.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }
            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
    
    struct DashboardOverviewView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Dashboard Overview")
                    .font(.headline)
                // Display quick insights
                HStack {
                    Text("Inventory Status:")
                        .font(.subheadline)
                    Spacer()
                    Text("120 items")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Text("Pending Deliveries:")
                        .font(.subheadline)
                    Spacer()
                    Text("5")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Text("Recent Activities:")
                        .font(.subheadline)
                    Spacer()
                    Text("3 new")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct QuickAccessShortcutsView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Quick Access Shortcuts")
                    .font(.headline)
                HStack {
                    NavigationLink(destination: AddMerchandiseView()) {
                        Label("Add Merchandise", systemImage: "plus.circle")
                    }
                    NavigationLink(destination: MapItinerariesView()) {
                        Label("View Map", systemImage: "map")
                    }
                    NavigationLink(destination: WorkerProfilesView()) {
                        Label("Worker Profiles", systemImage: "person.3")
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct RecentNotificationsView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Recent Notifications")
                    .font(.headline)
                // Show recent alerts
                HStack {
                    Text("Low Stock Warning:")
                        .font(.subheadline)
                    Spacer()
                    Text("Item A")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Text("Delivery Status:")
                        .font(.subheadline)
                    Spacer()
                    Text("On the way")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct ActionButtonsView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Actions")
                    .font(.headline)
                HStack {
                    Button(action: {
                        // Capture merchandise image action
                    }) {
                        ActionButton(title: "Capture Image", icon: "camera")
                    }
                    Button(action: {
                        // Add new delivery route action
                    }) {
                        ActionButton(title: "Add Route", icon: "location")
                    }
                    Button(action: {
                        // Assign tasks to workers action
                    }) {
                        ActionButton(title: "Assign Task", icon: "checkmark.circle")
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct SearchBarView: View {
        @State private var searchText = ""
        
        var body: some View {
            HStack {
                TextField("Search...", text: $searchText)
                    .padding(7)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                Button(action: {
                    // Perform search action
                }) {
                    Image(systemName: "magnifyingglass")
                }
            }
            .padding()
        }
    }
    
    struct DynamicContentDisplayView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Dynamic Content")
                    .font(.headline)
                // Display widgets or cards
                HStack {
                    Text("Current Location:")
                        .font(.subheadline)
                    Spacer()
                    Text("Warehouse A")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                HStack {
                    Text("Next Delivery:")
                        .font(.subheadline)
                    Spacer()
                    Text("2 PM")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct NavigationHubView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Navigation Hub")
                    .font(.headline)
                HStack {
                    NavigationLink(destination: InventoryManagementView()) {
                        NavigationButton(title: "Inventory", icon: "archivebox")
                    }
                    NavigationLink(destination: ReportsView()) {
                        NavigationButton(title: "Reports", icon: "doc.text")
                    }
                    NavigationLink(destination: WorkerAssignmentsView()) {
                        NavigationButton(title: "Assignments", icon: "person.crop.circle")
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct CustomizableWidgetsView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Customizable Widgets")
                    .font(.headline)
                // Allow users to customize widgets
                Text("Drag to rearrange")
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct HelpSectionShortcutView: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Help & Support")
                    .font(.headline)
                NavigationLink(destination: HelpCenterView()) {
                    Label("FAQs & Support", systemImage: "questionmark.circle")
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    struct RefreshButtonView: View {
        var body: some View {
            Button(action: {
                // Refresh data action
            }) {
                Label("Refresh", systemImage: "arrow.clockwise")
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }
    
    // Custom Button Styles
    struct ActionButton: View {
        var title: String
        var icon: String
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.white)
                Text(title)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
        }
    }
    
    struct NavigationButton: View {
        var title: String
        var icon: String
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.primary)
                Text(title)
                    .foregroundColor(.primary)
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(8)
        }
    }
    
    // Placeholder Views
    struct AddMerchandiseView: View {
        var body: some View {
            Text("Add Merchandise")
                .navigationTitle("Add Merchandise")
        }
    }
    
    struct MapItinerariesView: View {
        var body: some View {
            Text("Map & Itineraries")
                .navigationTitle("Map & Itineraries")
        }
    }
    
    struct WorkerProfilesView: View {
        var body: some View {
            Text("Worker Profiles")
                .navigationTitle("Worker Profiles")
        }
    }
    
    struct ReportsView: View {
        var body: some View {
            Text("Reports")
                .navigationTitle("Reports")
        }
    }
    
    struct WorkerAssignmentsView: View {
        var body: some View {
            Text("Worker Assignments")
                .navigationTitle("Worker Assignments")
        }
    }
    
    struct HelpCenterView: View {
        var body: some View {
            Text("Help Center")
                .navigationTitle("Help Center")
        }
    }
    
    struct SettingsView: View {
        var body: some View {
            Text("Settings")
                .navigationTitle("Settings")
        }
    }
}
