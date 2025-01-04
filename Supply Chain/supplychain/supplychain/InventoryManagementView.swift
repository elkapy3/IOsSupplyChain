import SwiftUI

struct InventoryManagementView: View {
    var body: some View {
        VStack {
            Text("Inventory Management")
                .font(.largeTitle)
                .padding()

            // Add UI components for managing inventory
            List {
                HStack {
                    Image(systemName: "car.fill")
                        .foregroundColor(.blue)
                    Text("Car")
                }
                
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.green)
                    Text("Home")
                }
                
                HStack {
                    Image(systemName: "cube.box.fill")
                        .foregroundColor(.orange)
                    Text("Materials")
                }
                
                HStack {
                    Image(systemName:"airplane.box.fill")
                        .foregroundColor(.orange)
                    Text("Airplane")
                }
            }
        }
    }
}

#Preview {
    InventoryManagementView()
} 

