.class public Lcom/sonymobile/conversations/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/analytics/Analytics$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mGaGtmUtilsAsHeavyProperty:Lcom/sonymobile/forklift/HeavyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Lcom/sonymobile/gagtmhelper/GaGtmUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/sonymobile/conversations/analytics/Analytics;->init(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonymobile/conversations/analytics/Analytics;->DEBUG:Z

    .line 56
    new-instance v0, Lcom/sonymobile/conversations/analytics/Analytics$1;

    const-string/jumbo v1, "app"

    invoke-direct {v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics$1;-><init>(Ljava/lang/Object;)V

    .line 55
    sput-object v0, Lcom/sonymobile/conversations/analytics/Analytics;->mGaGtmUtilsAsHeavyProperty:Lcom/sonymobile/forklift/HeavyProperty;

    .line 28
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f080002

    const/4 v4, 0x1

    .line 71
    sget-boolean v0, Lcom/sonymobile/conversations/analytics/Analytics;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "Initializing tracking"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 76
    :cond_0
    sget-boolean v0, Lcom/sonymobile/conversations/analytics/Analytics;->DEBUG:Z

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->enable(Z)V

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v7

    .line 81
    .local v7, "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    sget-boolean v0, Lcom/sonymobile/conversations/analytics/Analytics;->DEBUG:Z

    invoke-virtual {v7, v0}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    .line 84
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 87
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V

    .line 91
    sget-boolean v0, Lcom/sonymobile/conversations/analytics/Analytics;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    .line 93
    const-string/jumbo v2, "GTM-MKPSW3"

    .line 94
    new-instance v6, Lcom/sonymobile/conversations/analytics/Analytics$2;

    invoke-direct {v6}, Lcom/sonymobile/conversations/analytics/Analytics$2;-><init>()V

    const/4 v5, 0x2

    move-object v1, p0

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    .line 70
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "GTM-MKPSW3"

    .line 105
    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_0
.end method

.method public static pushAppView(Ljava/lang/String;)V
    .locals 2
    .param p0, "screenName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/sonymobile/conversations/analytics/Analytics;->mGaGtmUtilsAsHeavyProperty:Lcom/sonymobile/forklift/HeavyProperty;

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/sonymobile/conversations/analytics/Analytics$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/conversations/analytics/Analytics$4;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->startOnSerialExecutor()V

    .line 158
    return-void
.end method

.method public static pushEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "eventCategory"    # Ljava/lang/String;
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string/jumbo v0, ""

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method public static pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "eventCategory"    # Ljava/lang/String;
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "eventLabel"    # Ljava/lang/String;

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    return-void
.end method

.method public static pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "eventCategory"    # Ljava/lang/String;
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "eventLabel"    # Ljava/lang/String;
    .param p3, "eventValue"    # J

    .prologue
    .line 144
    sget-object v0, Lcom/sonymobile/conversations/analytics/Analytics;->mGaGtmUtilsAsHeavyProperty:Lcom/sonymobile/forklift/HeavyProperty;

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v6

    .line 145
    new-instance v0, Lcom/sonymobile/conversations/analytics/Analytics$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/conversations/analytics/Analytics$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    invoke-virtual {v6, v0}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->startOnSerialExecutor()V

    .line 142
    return-void
.end method
