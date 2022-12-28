//
//  NategaWidget.swift
//  NategaWidget
//
//  Created by Nikola Veljanovski on 26.12.22.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(),
                    image: UIImage(named: "stmary")!,
                    configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(),
                                image: UIImage(named: "stmary")!, configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        let entry = SimpleEntry(date: Date(),
                                image: UIImage(named: "stmary")!,
                                configuration: ConfigurationIntent())
        entries.append(entry)
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let image: UIImage
    let configuration: ConfigurationIntent
}

struct NategaWidgetEntryView : View {
    let date = Date()
    var entry: Provider.Entry

    var body: some View {
        ZStack {
            Image(uiImage: entry.image)
                .resizable()
                .scaledToFill()
                .clipped()
            
            textDate
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .padding(.vertical, 5)
                .padding(.horizontal, 8)
                .cornerRadius(12)
                .background(
                    Rectangle()
                        .fill(Color.black.opacity(0.2)))
                .cornerRadius(12)
                .padding(.top, 100)
                .padding(.horizontal, 8)

        }
    }
    
    private var textDate: some View {
        Text("Today")
            .fontWeight(.semibold)
            .foregroundColor(.white)
        +
        Text(" \(date.get(.day)) Martyrs")
            .foregroundColor(.white.opacity(0.7))
    }
}

struct NategaWidget: Widget {
    let kind: String = "NategaWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind,
                            intent: ConfigurationIntent.self,
                            provider: Provider()) { entry in
            NategaWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Natega Widget")
        .description("Showing the current feast")
        .supportedFamilies([.systemSmall])
    }
}

struct NategaWidget_Previews: PreviewProvider {
    static var previews: some View {
        NategaWidgetEntryView(entry: SimpleEntry(date: Date(),
                                                 image: UIImage(named: "stmary")!,
                                                 configuration: ConfigurationIntent()))
        .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}


extension Date {
    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}
