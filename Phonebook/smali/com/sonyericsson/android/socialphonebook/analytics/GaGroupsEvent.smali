.class public Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;
.super Ljava/lang/Object;
.source "GaGroupsEvent.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final pushContactPickerEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushGroupActionEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static final pushEmailEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushGroupActionEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private static pushGroupActionEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const v8, 0x7f0901cb

    .line 64
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v1

    .line 65
    const v2, 0x7f0901c4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    const v4, 0x7f0901d0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 64
    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->increaseGoogleAnalyticsGroupActionCount(Landroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, "value":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v1

    .line 75
    const v2, 0x7f0901c5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    const v4, 0x7f0901d1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 74
    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 62
    :cond_0
    return-void
.end method

.method public static final pushSmsEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const v0, 0x7f0901e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushGroupActionEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static final pushTabEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushGroupActionEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method
