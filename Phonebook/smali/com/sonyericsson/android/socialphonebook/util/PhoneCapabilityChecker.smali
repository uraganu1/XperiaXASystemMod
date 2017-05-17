.class public final Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;
.super Ljava/lang/Object;
.source "PhoneCapabilityChecker.java"


# static fields
.field static sIsEnrichedCallingSupported:Z

.field static sIsInitialized:Z

.field static sIsRcsCapPresenceEnabled:Z

.field static sIsRcsTapiBranded:Z

.field static sIsRcsTapiEnabled:Z

.field static sIsSipSupported:Z

.field static sIsSmsCapable:Z

.field static sIsVoiceCapable:Z

.field static sVoicemailString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areEnrichedCallsAppsInstalledAndEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 114
    const-string/jumbo v3, "com.sonymobile.holla.rcid"

    const/16 v4, 0x4000

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 115
    .local v0, "callPlusAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 116
    .end local v0    # "callPlusAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public static getVoicemailString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 199
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sVoicemailString:Ljava/lang/String;

    return-object v0
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 80
    const-string/jumbo v4, "phone"

    .line 79
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 81
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 82
    const-string/jumbo v6, "config_voicemail_string"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "android"

    .line 81
    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 83
    .local v3, "voicemailStringId":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsVoiceCapable:Z

    .line 84
    sget-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsVoiceCapable:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v4

    :goto_0
    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsSipSupported:Z

    .line 85
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsSmsCapable:Z

    .line 86
    if-eqz v3, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    sput-object v1, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sVoicemailString:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->areEnrichedCallsAppsInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsEnrichedCallingSupported:Z

    .line 98
    const-string/jumbo v4, "ro.somc.rcs_tapi"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string/jumbo v4, "ro.somc.rcs_branded"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 98
    :cond_1
    sput-boolean v5, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsRcsTapiEnabled:Z

    .line 100
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    .line 78
    return-void

    :cond_2
    move v4, v5

    .line 84
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "PhoneCapabilityChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const-string/jumbo v1, "activity"

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    .line 234
    .local v0, "taskIsLocked":Z
    if-eqz v0, :cond_0

    .line 235
    const v1, 0x7f0903c2

    .line 236
    const/4 v2, 0x0

    .line 235
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 238
    :cond_0
    return v0
.end method

.method public static isEmailIntentRegistered(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendEmailIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isEnrichedCallingSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 219
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsEnrichedCallingSupported:Z

    return v0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    .line 64
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isRcsCapPresenceEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 260
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsRcsCapPresenceEnabled:Z

    return v0
.end method

.method public static isRcsTapiEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 249
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsRcsTapiEnabled:Z

    return v0
.end method

.method public static isRoamingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string/jumbo v1, "phone"

    .line 188
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method public static isSIMCardAbsent(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    const-string/jumbo v3, "phone"

    .line 174
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 176
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_1

    .line 178
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 176
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 177
    goto :goto_0
.end method

.method public static isSipSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 126
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsSipSupported:Z

    return v0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 134
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsSmsCapable:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->initialize(Landroid/content/Context;)V

    .line 75
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->sIsVoiceCapable:Z

    return v0
.end method
