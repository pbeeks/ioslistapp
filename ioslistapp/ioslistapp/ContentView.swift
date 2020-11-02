import SwiftUI

struct ContentView: View {
    var body: some View {
        List(sampleMenuItems, children: \.subMenuItems) { item in
            HStack {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
         
                Text(item.name)
                    .font(.system(.title3, design: .rounded))
                    .bold()
            }
        }
    }
}

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [MenuItem]?
}

let sampleMenuItems = [ MenuItem(name: "Espresso Machines", image: "espresso", subMenuItems: espressoList),
                        MenuItem(name: "Grinders", image: "grinder", subMenuItems: grinderList),
                        MenuItem(name: "Other Equipment", image: "other")]

let espressoList = [ MenuItem(name: "Cadillac", image: "cadillac-espresso"), MenuItem(name: "Standard" , image: "standard-espresso")]

let grinderList = [ MenuItem(name: "Coarse", image: "coarse-grinder"), MenuItem(name: "Fine", image: "fine-grinder")]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

