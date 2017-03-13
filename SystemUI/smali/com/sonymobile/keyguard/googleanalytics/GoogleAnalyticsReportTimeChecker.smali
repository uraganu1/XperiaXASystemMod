.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReportTimeChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INTERNAL_REPORT_INTERVAL_MS:J

.field public static final REPORT_INTERVAL_MS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

.field private final mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

.field private final mGoogleAnalyticsReporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/time/Clock;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTimeClock"    # Lcom/sonymobile/keyguard/time/Clock;
    .param p3, "googleAnalyticsPreferences"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/keyguard/time/Clock;",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "googleAnalyticsReporters":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    .line 96
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    .line 97
    iput-object p4, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    .line 93
    return-void
.end method

.method private checkTime()Z
    .locals 14

    .prologue
    const-wide/16 v8, -0x1

    .line 122
    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    iget-object v6, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8, v9}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;->getNextReportTime(Landroid/content/Context;J)J

    move-result-wide v2

    .line 123
    .local v2, "nextReportTime":J
    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v5}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v0

    .line 124
    .local v0, "currentTime":J
    const/4 v4, 0x0

    .line 126
    .local v4, "returnValue":Z
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    long-to-double v6, v2

    long-to-double v8, v0

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V

    .line 135
    :cond_1
    :goto_0
    return v4

    .line 129
    :cond_2
    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    const/4 v4, 0x1

    .line 130
    :goto_1
    if-eqz v4, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->setNextReportTime()V

    goto :goto_0

    .line 129
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getReportTimeInterval()J
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->isEngOrUserdebugVariant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->INTERNAL_REPORT_INTERVAL_MS:J

    return-wide v0

    .line 146
    :cond_0
    sget-wide v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->REPORT_INTERVAL_MS:J

    return-wide v0
.end method

.method private isEngOrUserdebugVariant()Z
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private report()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsReporters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "reporter$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;

    .line 157
    .local v0, "reporter":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;->reportDataToGoogle()V

    goto :goto_0

    .line 154
    .end local v0    # "reporter":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;
    .end local v1    # "reporter$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setNextReportTime()V
    .locals 6

    .prologue
    .line 168
    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mCurrentTimeClock:Lcom/sonymobile/keyguard/time/Clock;

    invoke-interface {v2}, Lcom/sonymobile/keyguard/time/Clock;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->getReportTimeInterval()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 169
    .local v0, "nextReportTime":J
    iget-object v2, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mGoogleAnalyticsPreferences:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;

    iget-object v3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;->setNextReportTime(Landroid/content/Context;J)V

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "somc.google_analytics_enabled"

    .line 102
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    .line 104
    .local v0, "googleAnalyticsEnabled":Z
    :goto_0
    if-nez v0, :cond_1

    .line 105
    return-void

    .line 102
    .end local v0    # "googleAnalyticsEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "googleAnalyticsEnabled":Z
    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->checkTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReportTimeChecker;->report()V

    .line 101
    :cond_2
    return-void
.end method
