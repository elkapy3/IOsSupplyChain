import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                // User Profile Section
                Section(header: Text("User Profile")) {
                    NavigationLink(destination: UserProfileView()) {
                        Label("Edit Profile", systemImage: "person.crop.circle")
                    }
                }

                // Notification Preferences Section
                Section(header: Text("Notification Preferences")) {
                    Toggle("Delivery Updates", isOn: .constant(true))
                    Toggle("Inventory Alerts", isOn: .constant(true))
                    Toggle("Task Reminders", isOn: .constant(false))
                    Toggle("System Announcements", isOn: .constant(true))
                }

                // Account Settings Section
                Section(header: Text("Account Settings")) {
                    NavigationLink(destination: ChangePasswordView()) {
                        Label("Change Password", systemImage: "key")
                    }
                    NavigationLink(destination: TwoFactorAuthView()) {
                        Label("Two-Factor Authentication", systemImage: "lock.shield")
                    }
                    NavigationLink(destination: LinkedAccountsView()) {
                        Label("Linked Accounts", systemImage: "link")
                    }
                }

                // App Customization Section
                Section(header: Text("App Customization")) {
                    Toggle("Dark Mode", isOn: .constant(false))
                    NavigationLink(destination: DefaultHomeScreenView()) {
                        Label("Default Home Screen", systemImage: "house")
                    }
                }

                // Language & Region Section
                Section(header: Text("Language & Region")) {
                    NavigationLink(destination: LanguageRegionView()) {
                        Label("Language & Region", systemImage: "globe")
                    }
                }

                // Data Management Section
                Section(header: Text("Data Management")) {
                    NavigationLink(destination: BackupRestoreView()) {
                        Label("Backup & Restore", systemImage: "arrow.2.circlepath")
                    }
                    NavigationLink(destination: ExportDataView()) {
                        Label("Export Data", systemImage: "square.and.arrow.up")
                    }
                    Button(action: {
                        // Clear cache action
                    }) {
                        Label("Clear Cache", systemImage: "trash")
                    }
                }

                // Privacy & Security Section
                Section(header: Text("Privacy & Security")) {
                    NavigationLink(destination: ManagePermissionsView()) {
                        Label("Manage Permissions", systemImage: "shield")
                    }
                    NavigationLink(destination: PrivacyPolicyView()) {
                        Label("Privacy Policy", systemImage: "doc.text")
                    }
                }

                // Worker Access Controls Section
                Section(header: Text("Worker Access Controls")) {
                    NavigationLink(destination: WorkerRolesView()) {
                        Label("Assign Roles", systemImage: "person.3")
                    }
                }

                // Integration Settings Section
                Section(header: Text("Integration Settings")) {
                    NavigationLink(destination: IntegrationSettingsView()) {
                        Label("Connect Tools", systemImage: "puzzlepiece")
                    }
                }

                // Delivery Preferences Section
                Section(header: Text("Delivery Preferences")) {
                    NavigationLink(destination: DeliveryLocationsView()) {
                        Label("Default Delivery Locations", systemImage: "location")
                    }
                    NavigationLink(destination: WorkingHoursView()) {
                        Label("Working Hours", systemImage: "clock")
                    }
                }

                // Map Settings Section
                Section(header: Text("Map Settings")) {
                    NavigationLink(destination: MapProviderView()) {
                        Label("Default Map Provider", systemImage: "map")
                    }
                    Toggle("Real-Time Tracking", isOn: .constant(true))
                }

                // Support & Feedback Section
                Section(header: Text("Support & Feedback"))
                {
                    NavigationLink(destination: ContactSupportView()) {
                        Label("Contact Support", systemImage: "phone")
                    }
                    NavigationLink(destination: FeedbackView()) {
                        Label("Submit Feedback", systemImage: "envelope")
                    }
                }

                // About the App Section
                Section(header: Text("About the App")) {
                    NavigationLink(destination: AboutAppView()) {
                        Label("Version & Legal", systemImage: "info.circle")
                    }
                }

                // Logout Section
                Section {
                    Button(action: {
                        // Log out action
                    }) {
                        Label("Log Out", systemImage: "arrow.backward.square")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
} 
