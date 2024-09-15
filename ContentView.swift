import SwiftUI
struct ContentView: View {
    @State private var number: String = ""
    @State private var devider: String = ""
    @State private var numb: String = ""
    var body: some View {
        VStack {
            TextField("Enter the number you want to caulculate:", text: $number)
                .frame(width: 265.0, height: 50.0)
                .aspectRatio(contentMode: .fit)
                .background(.bar)
                .italic()
                .foregroundColor(.purple)
                .multilineTextAlignment(.center)
                .padding(.all)
             
            TextField("Enter the devider number to caulculate:", text: $numb)
                .frame(width: 260.0, height: 50.0)
                .cornerRadius(5.0)
                .multilineTextAlignment(.center)
                .padding(.all)
                .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
          
                Button("Convert", action: {
                    devid_convert()
                }).background(Color.purple)
                .foregroundColor(.pink)
                    .blur(radius: 0.5)
                    .frame(width: 100.0, height: 3.0)
                    .shadow(radius: 5)
                    .padding(.all)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                

                Text("\(devider)")
                .font(.title)
                    .lineLimit(1)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.7/*@END_MENU_TOKEN@*/)
                    .padding()
            
              
        }
        .padding()
    }
    private func devid_convert(){
        var rs : Int = 0
        var result: Int = 0
        if let inp1 = Int(number){
                result = inp1
            }
        var w:Int = 0
        if let a = Int(numb){
                w = a
        }
        for i in 2...w{
            if (result % i == 0){
                rs+=1
            }
            else{
                continue
            }
        }
        devider = String(rs)
    }
    
}
    #Preview {
        ContentView()
    }

