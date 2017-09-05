.class public Lcom/sonymobile/lockscreen/notifications/SomcLockscreenNotifications;
.super Ljava/lang/Object;
.source "SomcLockscreenNotifications.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldFilterOutOldNotifications(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLockscreenShowing"    # Z

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "filterOut":Z
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 35
    sget v3, Lcom/android/keyguard/R$bool;->config_keepLockscreenNotifications:I

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    const/4 v0, 0x1

    .line 36
    .local v0, "defaultSetting":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 37
    const-string/jumbo v3, "somc.lockscreen.keep_notifications"

    .line 38
    const/4 v4, -0x2

    .line 36
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 40
    .end local v0    # "defaultSetting":I
    :cond_0
    :goto_1
    return v1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defaultSetting":I
    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
