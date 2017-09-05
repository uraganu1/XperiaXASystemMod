.class public Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;
.super Ljava/lang/Object;
.source "RealPinAutoUnlockSettingsSecureWrapper.java"

# interfaces
.implements Lcom/sonymobile/keyguard/pin/PinAutoUnlockSettingsSecureWrapper;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    return-void
.end method


# virtual methods
.method public enableAutoUnlock()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    const-string/jumbo v1, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 68
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    return-void
.end method

.method public isAutoUnlockEnabled()Z
    .locals 6

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "returnValue":Z
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    const-string/jumbo v4, "somc.lockscreen_type_is_pin_and_exactly_4_digits"

    .line 55
    const/4 v5, -0x2

    .line 53
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    .local v2, "value":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 60
    .end local v2    # "value":I
    :goto_0
    return v1

    .line 56
    .restart local v2    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "ex":Landroid/provider/Settings$SettingNotFoundException;
    const-class v3, Lcom/sonymobile/keyguard/pin/RealPinAutoUnlockSettingsSecureWrapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
