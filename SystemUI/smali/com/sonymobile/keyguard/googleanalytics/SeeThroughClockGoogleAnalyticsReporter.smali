.class public Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;
.super Landroid/os/AsyncTask;
.source "SeeThroughClockGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private getSeeThroughClockUsage()Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .locals 7

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/keyguard/themedanimation/SeeThroughClockSettings;->shouldUseSeeThroughClock(Landroid/content/Context;)Z

    move-result v6

    .line 74
    .local v6, "shouldSeeThrougClock":Z
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    .line 75
    .end local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    const-string/jumbo v1, "SeeThroughClockUsage"

    .line 76
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 78
    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    return-object v0
.end method

.method private reportSeeThroughClockUsage()V
    .locals 8

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->getSeeThroughClockUsage()Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    move-result-object v0

    .line 59
    .local v0, "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UA-47011422-17"

    .line 60
    iget-object v3, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iget-object v5, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    .line 59
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->reportSeeThroughClockUsage()V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportDataToGoogle()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/SeeThroughClockGoogleAnalyticsReporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method
