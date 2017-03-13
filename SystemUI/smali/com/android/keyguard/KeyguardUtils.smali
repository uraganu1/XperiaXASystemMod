.class public Lcom/android/keyguard/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# static fields
.field private static final mIsMediatekSimMeLockSupport:Z

.field private static final mIsOwnerSdcardOnlySupport:Z

.field private static final mIsPrivacyProtectionLockSupport:Z

.field private static final mIsVoiceUnlockSupport:Z

.field private static sMtkSmartbookSupport:Z

.field private static sPhoneCount:I

.field private static sSVLTE:Z


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "ro.mtk_owner_sdcard_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mIsOwnerSdcardOnlySupport:Z

    .line 103
    const-string/jumbo v0, "ro.mtk_voice_unlock_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mIsVoiceUnlockSupport:Z

    .line 105
    const-string/jumbo v0, "ro.mtk_privacy_protection_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mIsPrivacyProtectionLockSupport:Z

    .line 107
    const-string/jumbo v0, "ro.sim_me_lock_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mIsMediatekSimMeLockSupport:Z

    .line 188
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    .line 256
    const-string/jumbo v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->sMtkSmartbookSupport:Z

    .line 265
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 264
    sput-boolean v0, Lcom/android/keyguard/KeyguardUtils;->sSVLTE:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 47
    return-void
.end method

.method public static getNumOfPhone()I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 194
    sget v1, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    .line 197
    sget v1, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    if-le v1, v0, :cond_1

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    .line 199
    :cond_0
    sget v0, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    return v0

    .line 197
    :cond_1
    sget v0, Lcom/android/keyguard/KeyguardUtils;->sPhoneCount:I

    goto :goto_0
.end method

.method public static getPhoneIdUsingSubId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 217
    const-string/jumbo v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhoneIdUsingSubId: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 219
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 220
    :cond_0
    const-string/jumbo v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhoneIdUsingSubId: invalid phonId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return v0

    .line 222
    :cond_1
    const-string/jumbo v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhoneIdUsingSubId: get phone ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 234
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 235
    .local v0, "subId":I
    const-string/jumbo v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubIdUsingPhoneId(phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v0
.end method

.method public static isFlightModePowerOffMd()Z
    .locals 4

    .prologue
    .line 182
    const-string/jumbo v1, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 183
    .local v0, "powerOffMd":Z
    const-string/jumbo v1, "KeyguardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "powerOffMd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v0
.end method

.method public static final isMediatekSimMeLockSupport()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public static final isPrivacyProtectionLockSupport()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/keyguard/KeyguardUtils;->mIsPrivacyProtectionLockSupport:Z

    return v0
.end method

.method public static final isSvlteAndSimCardLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 271
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v1, :cond_0

    .line 272
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v1, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x1

    .line 275
    :goto_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardUtils;->sSVLTE:Z

    if-eqz v1, :cond_3

    :goto_1
    return v0

    .line 273
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v1, :cond_2

    .line 274
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v0

    .local v0, "simLocked":Z
    goto :goto_0

    .line 273
    .end local v0    # "simLocked":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "simLocked":Z
    goto :goto_0

    .line 275
    .end local v0    # "simLocked":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isValidPhoneId(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 208
    const v1, 0x7fffffff

    if-eq p0, v1, :cond_0

    .line 209
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    .line 208
    :cond_0
    return v0
.end method

.method public static final isVoiceWakeupSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 131
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v3, "KeyguardUtils"

    const-string/jumbo v4, "isVoiceWakeupSupport() - get AUDIO_SERVICE fails, return false."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v2

    .line 136
    :cond_0
    const-string/jumbo v3, "MTK_VOW_SUPPORT"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v2, "MTK_VOW_SUPPORT=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    return v2
.end method

.method public static requestImeStatusRefresh(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v1, "KeyguardUtils"

    const-string/jumbo v2, "call imm.requestImeStatusRefresh()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->refreshImeWindowVisibility()V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getOptrBitmapUsingPhoneId(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 84
    .local v2, "subId":I
    const/4 v0, 0x0

    .line 85
    .local v0, "bgBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 86
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v3, "KeyguardUtils"

    const-string/jumbo v4, "getOptrBitmapUsingPhoneId, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "bgBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "bgBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bgBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getOptrNameUsingPhoneId(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 60
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 61
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 63
    const-string/jumbo v2, "KeyguardUtils"

    const-string/jumbo v3, "getOptrNameUsingPhoneId, return null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-object v5

    .line 67
    :cond_1
    const-string/jumbo v2, "KeyguardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOptrNameUsingPhoneId mDisplayName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
