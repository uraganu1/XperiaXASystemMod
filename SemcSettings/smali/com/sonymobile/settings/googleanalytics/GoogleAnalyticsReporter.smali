.class public Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "GoogleAnalyticsReporter.java"


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String;

.field private static final ACCOUNT_ID_DEBUG:Ljava/lang/String; = "UA-23067972-32"

.field private static final ACCOUNT_ID_RELEASE:Ljava/lang/String; = "UA-47011422-3"

.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;->LOG_TAG:Ljava/lang/String;

    .line 28
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UA-47011422-3"

    :goto_0
    sput-object v0, Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;->ACCOUNT_ID:Ljava/lang/String;

    .line 35
    return-void

    .line 28
    :cond_0
    const-string v0, "UA-23067972-32"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static reportEvent(Landroid/content/Context;Lcom/sonymobile/settings/googleanalytics/Event;Lcom/sonymobile/settings/googleanalytics/EventValue;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/sonymobile/settings/googleanalytics/Event;
    .param p2, "value"    # Lcom/sonymobile/settings/googleanalytics/EventValue;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-interface {p2}, Lcom/sonymobile/settings/googleanalytics/EventValue;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 53
    :try_start_0
    sget-object v2, Lcom/sonymobile/settings/googleanalytics/GoogleAnalyticsReporter;->ACCOUNT_ID:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sonymobile/settings/googleanalytics/Event;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sonymobile/settings/googleanalytics/Event;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/sonymobile/settings/googleanalytics/EventValue;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/sonymobile/settings/googleanalytics/EventValue;->getValue()J

    move-result-wide v6

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
