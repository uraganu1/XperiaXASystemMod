.class public Lcom/sonyericsson/android/socialphonebook/util/SystemSecurePrefsUtil;
.super Ljava/lang/Object;
.source "SystemSecurePrefsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShowIceInLockscreen(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "showIce":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 23
    const-string/jumbo v3, "sonymobile_lockscreen_ice_enabled"

    .line 22
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 27
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setShowIceInLockscreen(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "sonymobile_lockscreen_ice_enabled"

    .line 40
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    :cond_1
    return-void
.end method
