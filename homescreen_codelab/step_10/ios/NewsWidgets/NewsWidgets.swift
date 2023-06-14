//
//  NewsWidgets.swift
//  NewsWidgets
//
//  Created by Leigha Jarett on 12/13/22.
//

import WidgetKit
import SwiftUI

// TimelineProvider has three methods
struct Provider: TimelineProvider {

// Placeholder is used as a placholder when the widget is first displayed
    func placeholder(in context: Context) -> NewsArticleEntry {
//      Add some placholder title and description, and get the current date
      NewsArticleEntry(date: Date(), title: "Placholder Title", description: "Placholder description", filename: "No screenshot available",  displaySize: context.displaySize)
    }

// Snapshot entry represents the current time and state
    func getSnapshot(in context: Context, completion: @escaping (NewsArticleEntry) -> ()) {
      let entry: NewsArticleEntry
      if context.isPreview{
        entry = placeholder(in: context)
      }
      else{
        //      Get the data from the user defaults to display
        let userDefaults = UserDefaults(suiteName: "group.leighawidget")
        let title = userDefaults?.string(forKey: "headline_title") ?? "No Title Set"
        let description = userDefaults?.string(forKey: "headline_description") ?? "No Description Set"
        // New: get fileName from key/value store 
        let filename = userDefaults?.string(forKey: "filename") ?? "No screenshot available"
        print(filename)
        entry = NewsArticleEntry(date: Date(), title: title, description: description, filename: filename,  displaySize: context.displaySize)
      }
        completion(entry)
    }

//    getTimeline is called for the current and optionally future times to update the widget
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
//      This just uses the snapshot function we defined earlier
      getSnapshot(in: context) { (entry) in
// atEnd policy tells widgetkit to request a new entry after the date has passed
        let timeline = Timeline(entries: [entry], policy: .atEnd)
                  completion(timeline)
              }
    }
}


// The date and any data you want to pass into your app must conform to TimelineEntry
struct NewsArticleEntry: TimelineEntry {
    let date: Date
    let title: String
    let description:String
    // New: add the filename and displaySize.
    let filename: String
    let displaySize: CGSize
}

//View that holds the contents of the widget
struct NewsWidgetsEntryView : View {
  var entry: Provider.Entry
    
    init(entry: Provider.Entry){
            self.entry = entry
            CTFontManagerRegisterFontsForURL(bundle.appending(path: "/fonts/Chewy-Regular.ttf") as CFURL, CTFontManagerScope.process, nil)
        }
    
    var bundle: URL {
            let bundle = Bundle.main
            if bundle.bundleURL.pathExtension == "appex" {
                // Peel off two directory levels - MY_APP.app/PlugIns/MY_APP_EXTENSION.appex
                var url = bundle.bundleURL.deletingLastPathComponent().deletingLastPathComponent()
                url.append(component: "Frameworks/App.framework/flutter_assets")
                return url
            }
            return bundle.bundleURL
        }
   // New: create the ChartImage view
   var ChartImage: some View {
        if let uiImage = UIImage(contentsOfFile: entry.filename) {
            let image = Image(uiImage: uiImage)
                .resizable()
                .frame(width: entry.displaySize.height*0.5, height: entry.displaySize.height*0.5, alignment: .center)
            return AnyView(image)
        }
        print("The image file could not be loaded")
        return AnyView(EmptyView())
    }


  var body: some View {
    VStack {
        Text(entry.title).font(Font.custom("Chewy", size: 13))
        Text(entry.description).font(.system(size: 12)).padding(10)
        // New: add the ChartImage to the NewsWidgetEntryView
        ChartImage
    }
  }
}

struct NewsWidgets: Widget {
//  Identifier for the widget
    let kind: String = "NewsWidgets"

// Configuration for the widget
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            NewsWidgetsEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

//struct NewsWidgets_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsWidgetsEntryView(entry: NewsArticleEntry(date: Date(), title: "Preview Title", description: "Preview description", filename: "No Screenshot available"))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
//}
