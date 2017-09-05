.class public Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;
.super Ljava/lang/Object;
.source "ShortcutGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mType:Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;->mType:Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;

    .line 49
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;

    .prologue
    .line 62
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;-><init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;)V

    .line 63
    .local v0, "reporter":Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;
    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;->reportDataToGoogle()V

    .line 60
    return-void
.end method


# virtual methods
.method public reportDataToGoogle()V
    .locals 8

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UA-47011422-17"

    .line 57
    const-string/jumbo v3, "Shortcut"

    iget-object v0, p0, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter;->mType:Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/googleanalytics/ShortcutGoogleAnalyticsReporter$Types;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-wide/16 v6, 0x0

    .line 56
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    return-void
.end method
