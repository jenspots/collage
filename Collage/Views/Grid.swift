import SwiftUI

struct Grid : View {
    var body: some View {
        HSplitView {
            HStack {
                Image(systemName: "photo.fill")
                Text("Photos go here!")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            Text("Detail Panel")
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 300, maxHeight: .infinity)
                .background(.thinMaterial)
        }
    }
}

struct Browser_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
