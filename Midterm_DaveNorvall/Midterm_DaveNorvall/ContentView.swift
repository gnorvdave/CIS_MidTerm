//
//  ContentView.swift
//  Midterm_DaveNorvall
// Dave Norvall
//  Created by cisstudent on 10/19/25.
//

import SwiftUI
//let subject = Bundle.main.decode([Subject].self, from: "data.json")

struct LandDetail: View {
        let subject = Bundle.main.decode([Subject].self, from: "dataLand.json")

        var body: some View {
            List(subject) { subject in
                NavigationLink(destination: landDetailView(subject: subject)) {
                    HStack {
                        Image(subject.mainImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 110)
                            .padding()

                        Text(subject.name)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            .navigationTitle("Land").foregroundColor(.blue).fontWeight(.bold)
        }
    }

struct landDetailView: View {
    var subject: Subject

    var body: some View {
        ScrollView(.vertical) {
            VStack {
               // Text(subject.name)
                //    .font(.largeTitle)
                Image(subject.mainImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200)
                    .border(Color.yellow, width: 3)
                    .padding()
                
                Text(subject.description)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
            }
        }
        .navigationTitle(subject.name)
    }
}

struct AirDetail: View {
    let subject = Bundle.main.decode([Subject].self, from: "data.json")

    var body: some View {
        List(subject) { subject in
            NavigationLink(destination: airDetailView(subject: subject)) {
                HStack {
                    Image(subject.mainImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 110)
                        .padding()

                    Text(subject.name)
                        .multilineTextAlignment(.leading)
                }
            }
        }
        .navigationTitle("Air").foregroundColor(.blue).fontWeight(.bold)
    }
}

struct airDetailView: View {
    var subject: Subject

    var body: some View {
        ScrollView(.vertical) {
            VStack {
               // Text(subject.name)
                //    .font(.largeTitle)
                Image(subject.mainImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200)
                    .border(Color.yellow, width: 3)
                    .padding()
                
                Text(subject.description)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
            }
        }
        .navigationTitle(subject.name)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AirDetail()) {
                    Text("Air").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold)
                }
                NavigationLink(destination: LandDetail()) {
                    Text("Land").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold)
                }
                
            }
            .navigationTitle("WWII War Machines").frame(maxWidth: .infinity, alignment: .center).underline()
        }
    }
}

#Preview {
    ContentView()
}
