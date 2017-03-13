.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;,
        Lcom/android/keyguard/EmergencyButton$1;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;


# instance fields
.field private mEccPhoneIdForNoneSecurityMode:I

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

.field private final mEmergencyCallPresetNumber:Ljava/lang/String;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsSecure:Z

.field private final mIsVoiceCapable:Z

.field private mLocateAtNonSecureView:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isEnabledDirectEmergencyCall()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "com.android.phone"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    const/high16 v1, 0x14800000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/EmergencyButton;->mEccPhoneIdForNoneSecurityMode:I

    .line 83
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    .line 87
    new-instance v2, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    const v3, 0x1120058

    .line 135
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 137
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    const v3, 0x1120049

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 140
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->getEmergencyButtonExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    sget-object v2, Lcom/android/keyguard/R$styleable;->ECCButtonAttr:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    .local v1, "localAtNonSecureValue":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/keyguard/R$styleable;->ECCButtonAttr_locateAtNonSecureView:I

    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "localAtNonSecureValue":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    sget v3, Lcom/android/keyguard/R$integer;->somc_keyguard_emergency_call_preset_number:I

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyCallPresetNumber:Ljava/lang/String;

    .line 133
    return-void

    .line 144
    .end local v1    # "localAtNonSecureValue":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "EmergencyButton() - error in calling getEmergencyButtonExt()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private eccButtonShouldShow()Z
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "bd":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v4

    .line 349
    .local v4, "phoneCount":I
    new-array v3, v4, [Z

    .line 353
    .local v3, "isServiceSupportEcc":[Z
    :try_start_0
    const-string/jumbo v8, "phoneEx"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 352
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v5

    .line 355
    .local v5, "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v5, :cond_3

    .line 357
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/keyguard/EmergencyButton;->mEccPhoneIdForNoneSecurityMode:I

    .line 358
    const/4 v2, 0x0

    .end local v0    # "bd":Landroid/os/Bundle;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 359
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 360
    .local v7, "subId":I
    const-string/jumbo v8, "EmergencyButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , subIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-interface {v5, v7}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 362
    .local v0, "bd":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 363
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 364
    .local v6, "ss":Landroid/telephony/ServiceState;
    const-string/jumbo v8, "EmergencyButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ss.getState() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ss.isEmergencyOnly()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 365
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    .line 364
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 365
    const-string/jumbo v10, " for simId="

    .line 364
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_0

    .line 367
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v8

    .line 366
    if-eqz v8, :cond_2

    .line 368
    :cond_0
    const/4 v8, 0x1

    aput-boolean v8, v3, v2

    .line 370
    iget v8, p0, Lcom/android/keyguard/EmergencyButton;->mEccPhoneIdForNoneSecurityMode:I

    if-ne v8, v11, :cond_1

    .line 371
    iput v2, p0, Lcom/android/keyguard/EmergencyButton;->mEccPhoneIdForNoneSecurityMode:I

    .line 358
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 374
    .restart local v6    # "ss":Landroid/telephony/ServiceState;
    :cond_2
    const/4 v8, 0x0

    aput-boolean v8, v3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v5    # "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    .end local v7    # "subId":I
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "EmergencyButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getServiceState error e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getCurPhoneId()I

    move-result v9

    invoke-interface {v8, v3, v9}, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;->showEccByServiceState([ZI)Z

    move-result v8

    return v8
.end method

.method private getCurPhoneId()I
    .locals 2

    .prologue
    .line 398
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, "securityModel":Lcom/android/keyguard/KeyguardSecurityModel;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getPhoneIdUsingSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v1

    return v1
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEnabledDirectEmergencyCall()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 406
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/keyguard/R$array;->keyguard_punic_button_enabled_mcc:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "IndiaMCCList":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 408
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v4, ""

    .line 411
    .local v4, "mcc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "MCCMNC":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 414
    const/4 v6, 0x0

    const/4 v8, 0x3

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 424
    .end local v2    # "MCCMNC":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 425
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v1, v6

    .line 426
    .local v0, "IndiaMCC":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    return v10

    .line 417
    .end local v0    # "IndiaMCC":Ljava/lang/String;
    .restart local v2    # "MCCMNC":Ljava/lang/String;
    :cond_1
    return v10

    .line 420
    .end local v2    # "MCCMNC":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "TAG"

    const-string/jumbo v8, "Failed to get NetworkOperator Info: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 425
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "IndiaMCC":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "IndiaMCC":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 330
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 8

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 273
    .local v4, "visible":Z
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 274
    const/4 v4, 0x1

    .line 287
    .end local v4    # "visible":Z
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 290
    .local v2, "show":Z
    invoke-static {}, Lcom/mediatek/keyguard/AntiTheft/AntiTheftManager;->isAntiTheftLocked()Z

    move-result v0

    .line 292
    .local v0, "antiTheftLocked":Z
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->eccButtonShouldShow()Z

    move-result v1

    .line 294
    .local v1, "eccShouldShow":Z
    const-string/jumbo v5, "EmergencyButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLocateAtNonSecureView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-interface {v5}, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;->showEccInNonSecureUnlock()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 301
    :cond_1
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 302
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-interface {v5}, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;->showEccInNonSecureUnlock()Z

    move-result v5

    .line 301
    if-eqz v5, :cond_7

    .line 303
    :cond_2
    move v2, v1

    .line 305
    .end local v2    # "show":Z
    :goto_1
    const-string/jumbo v5, "EmergencyButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " --> visible= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", antiTheftLocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 306
    const-string/jumbo v7, ", mEmergencyButtonExt.showEccInNonSecureUnlock() ="

    .line 305
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-interface {v7}, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;->showEccInNonSecureUnlock()Z

    move-result v7

    .line 305
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 307
    const-string/jumbo v7, ", eccShouldShow="

    .line 305
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_2
    iget-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mLocateAtNonSecureView:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_8

    .line 316
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x1

    invoke-virtual {v5, p0, v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;ZZ)V

    .line 268
    :goto_3
    return-void

    .line 275
    .end local v0    # "antiTheftLocked":Z
    .end local v1    # "eccShouldShow":Z
    .restart local v4    # "visible":Z
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v3

    .line 278
    .local v3, "simLocked":Z
    if-eqz v3, :cond_5

    .line 280
    iget-boolean v4, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .local v4, "visible":Z
    goto/16 :goto_0

    .line 283
    .local v4, "visible":Z
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    .local v4, "visible":Z
    goto/16 :goto_0

    .line 297
    .end local v3    # "simLocked":Z
    .end local v4    # "visible":Z
    .restart local v0    # "antiTheftLocked":Z
    .restart local v1    # "eccShouldShow":Z
    .restart local v2    # "show":Z
    :cond_6
    const-string/jumbo v5, "EmergencyButton"

    const-string/jumbo v6, "ECC Button is located on Notification Keygaurd and OP do not ask to show. So this is a normal case ,we never show it."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x0

    .line 296
    goto :goto_2

    .line 301
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 312
    .end local v2    # "show":Z
    :cond_8
    const-string/jumbo v5, "EmergencyButton"

    const-string/jumbo v6, "If the button is on NotificationKeyguard and will not show, we should just set it View.GONE to give more space to IndicationText."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 160
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 214
    const v0, 0x104027a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 209
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 166
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 174
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 176
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsSecure:Z

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyCallPresetNumber:Ljava/lang/String;

    const-string/jumbo v1, "112"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonymobile/keyguard/SomcKeyguardUtils;->limitButtonTextSize(Landroid/content/Context;Landroid/widget/Button;)V

    .line 172
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 323
    return-void
.end method

.method public takeDirectEmergencyCallAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tel"

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyCallPresetNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 261
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 265
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 263
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 258
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 224
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 226
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 232
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v2}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 220
    :cond_0
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "Failed to stop app pinning"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 242
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getCurPhoneId()I

    move-result v1

    .line 243
    .local v1, "phoneId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 244
    iget v1, p0, Lcom/android/keyguard/EmergencyButton;->mEccPhoneIdForNoneSecurityMode:I

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    sget-object v3, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    invoke-interface {v2, v3, v1}, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;->customizeEmergencyIntent(Landroid/content/Intent;I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 251
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 249
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method
