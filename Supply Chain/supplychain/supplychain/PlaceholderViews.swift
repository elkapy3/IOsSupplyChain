import SwiftUI
import MapKit

struct UserProfileView: View {
    var body: some View {
        Text("User Profile")
            .navigationTitle("Edit Profile")
    }
}

struct ChangePasswordView: View {
    var body: some View {
        Text("Change Password")
            .navigationTitle("Change Password")
    }
}

struct TwoFactorAuthView: View {
    var body: some View {
        Text("Two-Factor Authentication")
            .navigationTitle("2FA Setup")
    }
}

struct LinkedAccountsView: View {
    var body: some View {
        Text("Linked Accounts")
            .navigationTitle("Linked Accounts")
    }
}

struct DefaultHomeScreenView: View {
    var body: some View {
        Text("Default Home Screen")
            .navigationTitle("Home Screen")
    }
}

struct LanguageRegionView: View {
    var body: some View {
        Text("Language & Region")
            .navigationTitle("Language & Region")
    }
}

struct BackupRestoreView: View {
    var body: some View {
        Text("Backup & Restore")
            .navigationTitle("Backup & Restore")
    }
}

struct ExportDataView: View {
    var body: some View {
        Text("Export Data")
            .navigationTitle("Export Data")
    }
}

struct ManagePermissionsView: View {
    var body: some View {
        Text("Manage Permissions")
            .navigationTitle("Permissions")
    }
}

struct PrivacyPolicyView: View {
    var body: some View {
        Text("Privacy Policy")
            .navigationTitle("Privacy Policy")
    }
}

struct WorkerRolesView: View {
    var body: some View {
        Text("Assign Roles")
            .navigationTitle("Worker Roles")
    }
}

struct IntegrationSettingsView: View {
    var body: some View {
        Text("Integration Settings")
            .navigationTitle("Integration")
    }
}

struct DeliveryLocationsView: View {
    var body: some View {
        Text("Default Delivery Locations")
            .navigationTitle("Delivery Locations")
    }
}

struct WorkingHoursView: View {
    var body: some View {
        Text("Working Hours")
            .navigationTitle("Working Hours")
    }
}

struct MapProviderView: View {
    var body: some View {
        Text("Default Map Provider")
            .navigationTitle("Map Provider")
    }

}

struct ContactSupportView: View {
    var body: some View {
        Text("Contact Support")
            .navigationTitle("Support")
    }
}

struct FeedbackView: View {
    var body: some View {
        Text("Submit Feedback")
            .navigationTitle("Feedback")
    }
}

struct AboutAppView: View {
    var body: some View {
        Text("Version & Legal")
            .navigationTitle("About")
    }
}

struct MerchandiseView: View {
    var body: some View {
        Text("Merchandise")
            .navigationTitle("Merchandise")
    }
}

struct ProcurementView: View {
    var body: some View {
        Text("Procurement")
            .navigationTitle("Procurement")
    }
}

struct ItinerariesView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // San Francisco coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Itineraries")
    }
}

struct PersonnelView: View {
    var body: some View {
        Text("Personnel")
            .navigationTitle("Personnel")
    }
} 
