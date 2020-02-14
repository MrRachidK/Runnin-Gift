import SwiftUI

struct kdo : Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let point: Int
    let description : String
    
}



struct Liste_cadeaux: View {
    var body: some View {
        NavigationView {
            
            QGrid(recompenses,
                  columns: 2,
                  vSpacing: 10,
                  hSpacing: 10,
                  vPadding: 0,
                  hPadding: 20
            ) { Kdox in
                recompense(Kdox: Kdox)
                }.navigationBarTitle("Cadeaux").navigationBarItems(trailing: Text("\(myPoints) pts"))
            
        }
    }
}

struct recompense : View {
    
    var Kdox: kdo
    var body: some View {
        
        NavigationLink(destination : Description(recomp: Kdox)) {
            VStack {
                Image(Kdox.image)
                    .resizable()
                    .frame(height: 120).cornerRadius(10)
                
                Text(Kdox.name).foregroundColor(.black).multilineTextAlignment(.center)
                Text("\(Kdox.point) points").foregroundColor(.black)
            }
            
        }.buttonStyle(PlainButtonStyle())
    }
}

struct Liste_cadeaux_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Liste_cadeaux().environment(\.colorScheme, .light)
            Liste_cadeaux().environment(\.colorScheme, .dark)
        }
    }
}
