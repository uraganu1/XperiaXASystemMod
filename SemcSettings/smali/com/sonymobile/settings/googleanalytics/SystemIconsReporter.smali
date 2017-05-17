.class public Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;
.super Ljava/lang/Object;
.source "SystemIconsReporter.java"


# static fields
.field private static final EVENTSMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/settings/googleanalytics/SwitchEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "alarm_clock"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->ALARM:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "battery"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "battery_percent"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY_PERCENTAGE:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "bluetooth"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BLUETOOTH:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "clock"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->TIME:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "location"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->LOCATION:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "wifi"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->WIFI:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    const-string v1, "stamina"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->STAMINA:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportClick(Landroid/content/Context;Lcom/sonymobile/settings/systemicon/SystemIconInfo;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/sonymobile/settings/systemicon/SystemIconInfo;
    .param p2, "isChecked"    # Z

    .prologue
    .line 32
    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SystemIconsReporter;->EVENTSMAP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonymobile/settings/systemicon/SystemIconInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 33
    .local v0, "ev":Lcom/sonymobile/settings/googleanalytics/SwitchEvent;
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Lcom/sonymobile/settings/googleanalytics/SwitchEventValue;

    invoke-direct {v1, p2}, Lcom/sonymobile/settings/googleanalytics/SwitchEventValue;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;->reportEvent(Landroid/content/Context;Lcom/sonymobile/settings/googleanalytics/Event;Lcom/sonymobile/settings/googleanalytics/EventValue;)V

    .line 37
    :cond_0
    return-void
.end method
