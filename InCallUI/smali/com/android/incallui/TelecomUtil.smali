.class public Lcom/android/incallui/TelecomUtil;
.super Ljava/lang/Object;
.source "TelecomUtil.java"


# static fields
.field private static sWarningLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/TelecomUtil;->sWarningLogged:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static hasModifyPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/incallui/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/android/incallui/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDefaultDialer(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {p0}, Lcom/android/incallui/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 112
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 113
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/TelecomUtil;->sWarningLogged:Z

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    sget-boolean v1, Lcom/android/incallui/TelecomUtil;->sWarningLogged:Z

    if-nez v1, :cond_0

    .line 117
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "Dialer is not currently set to be default dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/TelecomUtil;->sWarningLogged:Z

    goto :goto_0
.end method

.method public static silenceRinger(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/incallui/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.silenceRinger called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
