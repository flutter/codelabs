import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> NewsArticleEntry {
      NewsArticleEntry(date: Date(), title: "Placholder Title", description: "Placholder description")
    }

    func getSnapshot(in context: Context, completion: @escaping (NewsArticleEntry) -> ()) {
      let entry: NewsArticleEntry
      if context.isPreview{
        entry = placeholder(in: context)
      }
      else{
        // TO DO: Add your app group ID
        let userDefaults = UserDefaults(suiteName: "<YOUR APP GROUP>")
        let title = userDefaults?.string(forKey: "headline_title") ?? "No Title Set"
        let description = userDefaults?.string(forKey: "headline_description") ?? "No Description Set"
        entry = NewsArticleEntry(date: Date(), title: title, description: description)
      }
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
      getSnapshot(in: context) { (entry) in
        let timeline = Timeline(entries: [entry], policy: .atEnd)
                  completion(timeline)
              }
    }
}

struct NewsArticleEntry: TimelineEntry {
    let date: Date
    let title: String
    let description:String
}

struct NewsWidgetsEntryView : View {
  var entry: Provider.Entry
    
    // New: Register the font.
    init(entry: Provider.Entry){
            self.entry = entry
            CTFontManagerRegisterFontsForURL(bundle.appending(path: "/fonts/Chewy-Regular.ttf") as CFURL, CTFontManagerScope.process, nil)
        }
    
    // New: Add the helper function.
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

  var body: some View {
    VStack {
        // Update the following line.
        Text(entry.title).font(Font.custom("Chewy", size: 13))
        Text(entry.description)
    }
  }
}

struct NewsWidgets: Widget {
    let kind: String = "NewsWidgets"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            NewsWidgetsEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

