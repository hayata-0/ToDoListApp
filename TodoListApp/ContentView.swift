
import SwiftUI

struct ContentView: View {
    
    @State var newItem:String = ""
    @State var toDoList:[String] = ["課題", "掃除"]
    
    var body: some View {
        VStack{
            HStack{
                Text("新しい予定の追加").font(.largeTitle).padding(.leading)
                Spacer()
            }
            
            
            HStack{
                TextField("新しい予定を入力",text: $newItem).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 300)
            
                Button(action:{
                    self.toDoList.append(self.newItem)
                    self.newItem = ""
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius:5).frame(width: 50, height: 30)
                            .foregroundColor(.green)
                    
                        Text("追加").foregroundColor(.white)
                    }
                }
            }
            
            HStack{
                Text("To Do List").font(.largeTitle).padding(.leading)
                Spacer()
            }
            
            List(toDoList,id: \.self){ item in
                Text(item)
            }
            
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

