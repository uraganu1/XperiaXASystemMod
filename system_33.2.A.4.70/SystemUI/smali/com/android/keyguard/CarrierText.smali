.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$StatusMode;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$1;,
        Lcom/android/keyguard/CarrierText$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

.field private static synthetic -com_android_keyguard_CarrierText$StatusModeSwitchesValues:[I

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrier:[Ljava/lang/String;

.field private mCarrierNeedToShow:[Z

.field private mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

.field private mContext:Landroid/content/Context;

.field private mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNumOfPhone:I

.field private mStatusMode:[Lcom/android/keyguard/CarrierText$StatusMode;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_android_keyguard_CarrierText$StatusModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com_android_keyguard_CarrierText$StatusModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com_android_keyguard_CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/CarrierText$StatusMode;->values()[Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkSearching:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com_android_keyguard_CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initMembers()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v2, Lcom/android/keyguard/CarrierText$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$2;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 154
    iput-object p1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    const v3, 0x1120058

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 159
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initMembers()V

    .line 162
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mIOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/keyguard/Plugin/KeyguardPluginFactory;->getCarrierTextExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    .line 166
    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 171
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isInsideEmergencyCarrierArea()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 179
    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 181
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    .line 182
    const-string/jumbo v3, "phone"

    .line 181
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 152
    return-void

    .line 170
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    throw v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 613
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 614
    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 612
    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "plmnValid":Z
    goto :goto_0

    .line 613
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "spnValid":Z
    goto :goto_1

    .line 616
    :cond_2
    if-eqz v0, :cond_3

    .line 617
    return-object p0

    .line 618
    :cond_3
    if-eqz v1, :cond_4

    .line 619
    return-object p1

    .line 621
    :cond_4
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private static concatenateForECA(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "carrier1"    # Ljava/lang/CharSequence;
    .param p1, "carrier2"    # Ljava/lang/CharSequence;

    .prologue
    .line 781
    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "separatorForECA":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 783
    .local v0, "isCarrier1Valid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 784
    .local v1, "isCarrier2Valid":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 785
    return-object v2

    .line 782
    .end local v0    # "isCarrier1Valid":Z
    .end local v1    # "isCarrier2Valid":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isCarrier1Valid":Z
    goto :goto_0

    .line 783
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "isCarrier2Valid":Z
    goto :goto_1

    .line 787
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private getCarrierTextForSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "hnbName"    # Ljava/lang/CharSequence;
    .param p5, "csgId"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "carrierText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 445
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom_android_keyguard_CarrierText$StatusModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 539
    move-object v0, p3

    .line 544
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .line 545
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 546
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 545
    invoke-interface {v2, v0, v3, p1, v4}, Lcom/mediatek/keyguard/ext/ICarrierTextExt;->customizeCarrierTextWhenCardTypeLocked(Ljava/lang/CharSequence;Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_1
    const-string/jumbo v2, "CarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCarrierTextForSimState simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 549
    const-string/jumbo v4, " text(carrierName)="

    .line 548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 549
    const-string/jumbo v4, " HNB="

    .line 548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 550
    const-string/jumbo v4, " CSG="

    .line 548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 550
    const-string/jumbo v4, " carrierText="

    .line 548
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v0

    .line 441
    .end local v1    # "status":Lcom/android/keyguard/CarrierText$StatusMode;
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v2, ""

    return-object v2

    .line 450
    .restart local v1    # "status":Lcom/android/keyguard/CarrierText$StatusMode;
    :pswitch_0
    if-nez p3, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 453
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :cond_3
    move-object v0, p3

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 458
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_1
    if-nez p3, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 466
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :cond_4
    move-object v0, p3

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 474
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 475
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 476
    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_persolocked_carrier_text:I

    .line 475
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, p3

    .line 473
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 481
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_3
    if-nez p3, :cond_6

    .line 483
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 489
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isForceNoEmgCallOnly()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 490
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 493
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 494
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 495
    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_sim_missing_carrier_text:I

    .line 494
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, p3

    .line 492
    :cond_8
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 502
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 503
    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    .line 502
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 501
    invoke-direct {p0, v2, p3}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 507
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isForceNoEmgCallOnly()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 508
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 511
    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 512
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 513
    sget v5, Lcom/android/keyguard/R$bool;->somc_add_emergency_call_info_to_sim_missing_carrier_text:I

    .line 512
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v2, p3

    .line 510
    :cond_a
    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 518
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_6
    if-nez p3, :cond_b

    .line 520
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 524
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 523
    invoke-direct {p0, v2, p3}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 529
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_7
    if-nez p3, :cond_c

    .line 531
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 535
    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 534
    invoke-direct {p0, v2, p3}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private getDefaultStringByEmergency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    sget v0, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    .line 764
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getEmergencyCallOnlyState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    const v0, 0x104028d

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 572
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    .line 577
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    .line 578
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 581
    .local v0, "missingAndNotProvisioned":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 582
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 577
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 578
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 576
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 587
    :cond_4
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 608
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 589
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 593
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 595
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 597
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 599
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 601
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 603
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 606
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private initMembers()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getNumOfPhone()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    .line 137
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    .line 138
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    .line 140
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    new-array v1, v1, [Lcom/android/keyguard/CarrierText$StatusMode;

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mStatusMode:[Lcom/android/keyguard/CarrierText$StatusMode;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mStatusMode:[Lcom/android/keyguard/CarrierText$StatusMode;

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method private isForceNoEmgCallOnly()Z
    .locals 4

    .prologue
    .line 792
    const-string/jumbo v1, "ro.telephony.no_emg_calls_only"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 793
    .local v0, "result":Z
    const-string/jumbo v1, "CarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isForceNoEmgCallOnly() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return v0
.end method

.method private isInsideEmergencyCarrierArea()Z
    .locals 2

    .prologue
    .line 774
    const-string/jumbo v0, "insideEmergencyCarrierArea"

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 630
    const-string/jumbo v3, "connectivity"

    .line 629
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 631
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 560
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    return-object p1
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 753
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 754
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    return-void
.end method

.method private showOrHideCarrier()Z
    .locals 15

    .prologue
    .line 643
    const/4 v5, 0x0

    .line 645
    .local v5, "mNumOfSIM":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v12, p0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    if-ge v2, v12, :cond_4

    .line 646
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 647
    .local v8, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v8}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v9

    .line 648
    .local v9, "statusMode":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v12, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    if-eq v9, v12, :cond_0

    .line 649
    sget-object v12, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    if-ne v9, v12, :cond_1

    .line 648
    :cond_0
    const/4 v7, 0x1

    .line 651
    .local v7, "simMissing":Z
    :goto_1
    const-string/jumbo v12, "CarrierText"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showOrHideCarrier() - before showCarrierTextWhenSimMissing,phone#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 652
    const-string/jumbo v14, " simMissing = "

    .line 651
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-interface {v12, v7, v2}, Lcom/mediatek/keyguard/ext/ICarrierTextExt;->showCarrierTextWhenSimMissing(ZI)Z

    move-result v7

    .line 654
    .local v7, "simMissing":Z
    const-string/jumbo v12, "CarrierText"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showOrHideCarrier() - after showCarrierTextWhenSimMissing,phone#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 655
    const-string/jumbo v14, " simMissing = "

    .line 654
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-nez v7, :cond_3

    .line 658
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    const/4 v13, 0x1

    aput-boolean v13, v12, v2

    .line 659
    add-int/lit8 v5, v5, 0x1

    .line 645
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v7    # "simMissing":Z
    :cond_1
    sget-object v12, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    if-ne v9, v12, :cond_2

    const/4 v7, 0x1

    .local v7, "simMissing":Z
    goto :goto_1

    .end local v7    # "simMissing":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "simMissing":Z
    goto :goto_1

    .line 661
    .local v7, "simMissing":Z
    :cond_3
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v2

    goto :goto_2

    .line 665
    .end local v7    # "simMissing":Z
    .end local v8    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v9    # "statusMode":Lcom/android/keyguard/CarrierText$StatusMode;
    :cond_4
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v11

    .line 666
    .local v11, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_6

    .line 667
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "defaultPlmn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 669
    .local v3, "index":I
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_5

    .line 671
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 672
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 673
    .local v10, "subId":I
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 674
    .local v6, "phoneId":I
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 675
    .local v0, "carrierName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 676
    move v3, v6

    .line 680
    .end local v0    # "carrierName":Ljava/lang/CharSequence;
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "phoneId":I
    .end local v10    # "subId":I
    :cond_5
    iget-object v12, p0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    const/4 v13, 0x1

    aput-boolean v13, v12, v3

    .line 681
    const-string/jumbo v12, "CarrierText"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateOperatorInfo, No SIM cards, force slotId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 682
    const-string/jumbo v14, " to visible."

    .line 681
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v1    # "defaultPlmn":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_6
    if-nez v5, :cond_8

    const/4 v12, 0x1

    :goto_4
    return v12

    .line 669
    .restart local v0    # "carrierName":Ljava/lang/CharSequence;
    .restart local v1    # "defaultPlmn":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v6    # "phoneId":I
    .restart local v10    # "subId":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 685
    .end local v0    # "carrierName":Ljava/lang/CharSequence;
    .end local v1    # "defaultPlmn":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "phoneId":I
    .end local v10    # "subId":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_4
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 758
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 383
    const-string/jumbo v0, "CarrierText"

    const-string/jumbo v1, "onAttachedToWindow called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 385
    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 394
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->registerBroadcastReceiver()V

    .line 381
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 391
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 400
    const-string/jumbo v0, "CarrierText"

    const-string/jumbo v1, "onDetachedFromWindow called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->unregisterBroadcastReceiver()V

    .line 398
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 370
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 371
    const v2, 0x10404f9

    .line 370
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 372
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 373
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 376
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/CarrierText;->setLayerType(ILandroid/graphics/Paint;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierTextColor()V

    .line 368
    return-void
.end method

.method protected updateCarrierText()V
    .locals 19

    .prologue
    .line 187
    const/4 v8, 0x0

    .line 188
    .local v8, "anySimReadyAndInService":Z
    const/4 v11, 0x0

    .line 190
    .local v11, "displayText":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 191
    .local v5, "hnbName":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 265
    .local v6, "csgId":Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string/jumbo v1, "CarrierText"

    const-string/jumbo v17, "updateCarrierText() - WifiOnly deivce, not show carrier text."

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v1, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->showOrHideCarrier()Z

    move-result v7

    .line 273
    .local v7, "allSimsMissing":Z
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    if-ge v2, v1, :cond_5

    .line 274
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v15

    .line 275
    .local v15, "subId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 277
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v16

    .line 278
    .local v16, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getDefaultStringByEmergency()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "carrierName":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCarrierText(): subId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " , phoneId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 280
    const-string/jumbo v18, ", simState = "

    .line 279
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 280
    const-string/jumbo v18, ", carrierName = "

    .line 279
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v1, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/ServiceState;

    .line 284
    .local v14, "ss":Landroid/telephony/ServiceState;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    .line 287
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v17, 0x12

    move/from16 v0, v17

    if-ne v1, v0, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 292
    :cond_1
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SIM ready and in service: subId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", ss="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v8, 0x1

    .end local v14    # "ss":Landroid/telephony/ServiceState;
    :cond_2
    move-object/from16 v1, p0

    .line 304
    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 305
    .local v10, "carrierTextForSimState":Ljava/lang/CharSequence;
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCarrierText(): carrierTextForSimState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v10, :cond_4

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    .line 273
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 278
    .end local v4    # "carrierName":Ljava/lang/CharSequence;
    .end local v10    # "carrierTextForSimState":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "carrierName":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 326
    .restart local v10    # "carrierTextForSimState":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v17, v1, v2

    goto :goto_2

    .line 330
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v4    # "carrierName":Ljava/lang/CharSequence;
    .end local v10    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v15    # "subId":I
    .end local v16    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    const/4 v9, 0x0

    .line 331
    .local v9, "carrierFinalContent":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    sget-object v17, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Lcom/mediatek/keyguard/ext/ICarrierTextExt;->customizeCarrierTextDivider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "divider":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .end local v9    # "carrierFinalContent":Ljava/lang/CharSequence;
    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/CarrierText;->mNumOfPhone:I

    if-ge v13, v1, :cond_9

    .line 333
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCarrierText() - mCarrierNeedToShow[i] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    move-object/from16 v18, v0

    aget-boolean v18, v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 334
    const-string/jumbo v18, " mCarrier[i] = "

    .line 333
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    .line 333
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrierNeedToShow:[Z

    aget-boolean v1, v1, v13

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    aget-object v1, v1, v13

    if-eqz v1, :cond_7

    .line 337
    const/4 v1, 0x1

    if-lt v13, v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->isInsideEmergencyCarrierArea()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-static {v9, v1}, Lcom/android/keyguard/CarrierText;->concatenateForECA(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 340
    :cond_6
    if-nez v9, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    aget-object v9, v1, v13

    .line 332
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 344
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mCarrier:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v13

    .line 344
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "carrierFinalContent":Ljava/lang/CharSequence;
    goto :goto_4

    .line 351
    .end local v9    # "carrierFinalContent":Ljava/lang/CharSequence;
    :cond_9
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCarrierText() - after combination, carrierFinalContent = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v17, Lcom/android/keyguard/R$string;->airplane_mode:I

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 360
    :cond_a
    const-string/jumbo v1, "CarrierText"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCarrierText()2 - after combination, carrierFinalContent = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public updateCarrierTextColor()V
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getId()I

    move-result v1

    sget v2, Lcom/android/keyguard/R$id;->expanded_carrier_text:I

    if-ne v1, v2, :cond_0

    .line 414
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    sget v2, Lcom/android/keyguard/R$color;->somc_keyguard_theme_color_secondary_text:I

    .line 417
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 420
    .local v0, "textColor":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    .line 411
    return-void
.end method
