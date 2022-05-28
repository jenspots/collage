import SwiftUI

struct ContentView: View {
    @State private var searchterm = ""
    @State private var gridWidth = 1.0

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Photos")) {
                    NavigationLink(destination: Grid()) {
                        Label("Library", systemImage: "photo")
                            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    
                    NavigationLink(destination: Grid()) {
                        Label("Locations", systemImage: "map")
                            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                }
                
                Section(header: Text("Directories")) {
                    NavigationLink(destination: Grid(), label: {
                        Label("Root", systemImage: "folder")
                            .accentColor(.gray)
                    })
                }
        
                Section(header: Text("Tags")) {
                    NavigationLink(destination: Grid()) {
                    Label("Norway", systemImage: "number")
                        .accentColor(.gray)
                    }
                }

            }
        }
        .listStyle(.sidebar)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Slider(
                    value: $gridWidth,
                    in: 3...100,
                    minimumValueLabel: Text("-")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray),
                    maximumValueLabel: Text("+")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                ) {
                    Text("test")
                }
                .frame(width: 150, height: 5)
                
            }

            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Photo", systemImage: "photo")
                }
            }
        }
        .searchable(text: $searchterm)
        .navigationTitle("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
