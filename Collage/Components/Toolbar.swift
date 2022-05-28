import SwiftUI

struct Toolbar: View {    
    var body: some View {
        ToolbarItemGroup {
            Button(action: {}) {
                Label("Photo", systemImage: "photo")
            }
        }
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar()
    }
}
