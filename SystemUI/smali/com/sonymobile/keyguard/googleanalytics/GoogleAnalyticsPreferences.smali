.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPreferences;
.super Ljava/lang/Object;
.source "GoogleAnalyticsPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextReportTime(Landroid/content/Context;J)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultValue"    # J

    .prologue
    .line 37
    const-string/jumbo v1, "GoogleAnalytics"

    .line 38
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "NEXT_REPORT_TIME"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public setNextReportTime(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nextReportTime"    # J

    .prologue
    .line 50
    const-string/jumbo v2, "GoogleAnalytics"

    .line 51
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "NEXT_REPORT_TIME"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method
