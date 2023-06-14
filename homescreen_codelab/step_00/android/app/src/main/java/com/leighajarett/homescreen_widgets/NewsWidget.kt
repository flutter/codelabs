import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews
import com.leighajarett.homescreen_widgets.R
import es.antonborri.home_widget.HomeWidgetPlugin

class NewsWidget : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
    ) {
        val widgetData = HomeWidgetPlugin.getData(context)
        for (appWidgetId in appWidgetIds) {
            val views = RemoteViews(context.packageName, R.layout.news_widget).apply {

                // Swap title text by fetching the string from local storage
                setTextViewText(R.id.headline_title, widgetData.getString("headline_title", null)
                    ?: "No Title Set")

                setTextViewText(R.id.headline_description, widgetData.getString("headline_description", null)
                    ?: "No Message Set")
            }

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}
