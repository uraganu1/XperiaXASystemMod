.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;,
        Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;,
        Lcom/android/settings/sim/SimSettings$AirplaneMode;,
        Lcom/android/settings/sim/SimSettings$PhoneStateListeners;,
        Lcom/android/settings/sim/SimSettings$1;,
        Lcom/android/settings/sim/SimSettings$2;,
        Lcom/android/settings/sim/SimSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mShowxdivert:Z


# instance fields
.field private mAirplaneMode:Lcom/android/settings/sim/SimSettings$AirplaneMode;

.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mCallforwardPreference:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIsAirplaneModeOn:Z

.field private mIsInForeground:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMAndSuscriptionReceiver:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/sim/SimSettings;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->disableTheCategory()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/sim/SimSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/sim/SimSettings;I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->isRadioSwitchComplete(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/sim/SimSettings;I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findSlotIdBySubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/sim/SimSettings;I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findSubIdBySlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/sim/SimSettings;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->handleAirplaneModeChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallforawardPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$2;-><init>()V

    .line 533
    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    const-string/jumbo v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 112
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 113
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 114
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 115
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 120
    iput-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->mIsInForeground:Z

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    .line 128
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    .line 167
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    .line 166
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 793
    iput-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 801
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    return-void
.end method

.method private customizeSimDisplay()V
    .locals 5

    .prologue
    const v4, 0x7f0b0a19

    const/4 v3, -0x1

    .line 1021
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 1023
    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1020
    return-void
.end method

.method private disableTheCategory()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1072
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1073
    const-string/jumbo v3, "msim_mode_setting"

    const/4 v4, -0x1

    .line 1072
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1074
    .local v0, "priviousSimMode":I
    invoke-static {}, Lcom/mediatek/settings/sim/RadioPowerController;->getSimCount()I

    move-result v1

    .line 1075
    .local v1, "simCount":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1076
    return v5

    .line 1078
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1081
    const/4 v2, 0x1

    return v2

    .line 1079
    :cond_1
    return v5
.end method

.method private findSlotIdBySubId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private findSubIdBySlotId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 770
    const/4 v0, -0x1

    .line 771
    .local v0, "result":I
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 772
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 773
    aget v0, v1, v3

    .line 775
    :cond_0
    return v0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 523
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1178
    move v0, p1

    .line 1179
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings/sim/SimSettings$6;-><init>(Lcom/android/settings/sim/SimSettings;II)V

    aput-object v2, v1, p1

    .line 1187
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private handleAirplaneModeChange(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 935
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 936
    const-string/jumbo v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "air plane mode is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 938
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 939
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimPref()V

    .line 940
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->removeItemsForTablet()V

    .line 934
    return-void
.end method

.method private handleRadioPowerSwitchComplete()V
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isResumed()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V

    .line 919
    return-void
.end method

.method private initDualSIMReachability()V
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/sim/SimSettings;->mShowxdivert:Z

    .line 565
    const-string/jumbo v0, "call_forward_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 564
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallforwardPreference:Landroid/preference/PreferenceScreen;

    .line 566
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->mShowxdivert:Z

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCallforwardPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    return-void

    .line 573
    :cond_0
    new-instance v0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    .line 574
    new-instance v0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSIMAndSuscriptionReceiver:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    .line 575
    new-instance v0, Lcom/android/settings/sim/SimSettings$AirplaneMode;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimSettings$AirplaneMode;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAirplaneMode:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    .line 562
    return-void
.end method

.method private initForSimStateChange()V
    .locals 4

    .prologue
    .line 835
    const-string/jumbo v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 834
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 837
    new-instance v1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 838
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v2, Lcom/android/settings/sim/SimSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/SimSettings$5;-><init>(Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 850
    const-string/jumbo v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init()... air plane mode is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    .line 853
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {v1, p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerOnPhoneServiceStateChange(Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;)V

    .line 855
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 856
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v1, "android.telecom.action.DEFAULT_ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string/jumbo v1, "android.telecom.action.PHONE_ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 833
    return-void
.end method

.method private initPhoneStateListener()V
    .locals 4

    .prologue
    .line 390
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 391
    .local v2, "subs":[I
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 393
    new-instance v1, Lcom/android/settings/sim/SimSettings$4;

    aget v3, v2, v0

    invoke-direct {v1, p0, v3}, Lcom/android/settings/sim/SimSettings$4;-><init>(Lcom/android/settings/sim/SimSettings;I)V

    .line 412
    .local v1, "listener":Landroid/telephony/PhoneStateListener;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v1, v3, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "listener":Landroid/telephony/PhoneStateListener;
    :cond_0
    return-void
.end method

.method private isCallStateIdle()Z
    .locals 5

    .prologue
    .line 1163
    const/4 v0, 0x1

    .line 1164
    .local v0, "callStateIdle":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 1166
    const/4 v0, 0x0

    .line 1164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    const-string/jumbo v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallStateIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return v0
.end method

.method private isRadioSwitchComplete(I)Z
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 870
    const/4 v2, 0x1

    .line 871
    .local v2, "isComplete":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 872
    .local v4, "slotId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v5, :cond_1

    .line 876
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    invoke-interface {v5, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 885
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 886
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 887
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-direct {p0, p1, v3}, Lcom/android/settings/sim/SimSettings;->isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z

    move-result v2

    .line 890
    .end local v2    # "isComplete":Z
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    const-string/jumbo v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRadioSwitchComplete("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 891
    const-string/jumbo v7, ", isComplete: "

    .line 890
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return v2

    .line 878
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "isComplete":Z
    :cond_1
    :try_start_1
    const-string/jumbo v5, "SimSettings"

    const-string/jumbo v6, "mTelephonyEx is null, returen false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 882
    const-string/jumbo v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getServiceState() error, subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 900
    const-string/jumbo v3, "SimSettings"

    const-string/jumbo v4, "isRadioSwitchComplete()... activity is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v6

    .line 903
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 904
    .local v2, "slotId":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 905
    const-string/jumbo v4, "msim_mode_setting"

    const/4 v5, -0x1

    .line 904
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 906
    .local v0, "currentSimMode":I
    shl-int v3, v7, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 907
    .local v1, "expectedRadioOn":Z
    :goto_0
    const-string/jumbo v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "soltId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expectedRadioOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 909
    return v7

    .line 906
    .end local v1    # "expectedRadioOn":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "expectedRadioOn":Z
    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 911
    return v7

    .line 913
    :cond_3
    return v6
.end method

.method public static isSMSPromptEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1221
    const/4 v1, 0x0

    .line 1222
    .local v1, "prompt":Z
    const/4 v2, 0x0

    .line 1224
    .local v2, "value":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1225
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 1224
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1229
    :goto_0
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1230
    :goto_1
    const-string/jumbo v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return v1

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings Exception Reading Dual Sim SMS Prompt Values. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1229
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isSingleSim()Z
    .locals 6

    .prologue
    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "result":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->isSubActive(I)Z

    move-result v1

    .line 1209
    .local v1, "sim0":Z
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/sim/SimSettings;->isSubActive(I)Z

    move-result v2

    .line 1210
    .local v2, "sim1":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 1211
    const/4 v0, 0x1

    .line 1215
    :cond_0
    :goto_0
    const-string/jumbo v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSingleSim() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return v0

    .line 1212
    :cond_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 1213
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSubActive(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "cardActive":Z
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findSubIdBySlotId(I)I

    move-result v1

    .line 762
    .local v1, "subId":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v2

    .line 762
    if-eqz v2, :cond_0

    .line 764
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 766
    .end local v0    # "cardActive":Z
    :goto_0
    return v0

    .line 762
    .restart local v0    # "cardActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listen()V
    .locals 5

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1193
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1194
    const-string/jumbo v3, "SimSettings"

    const-string/jumbo v4, "Register for call state change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v0, v3, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1197
    .local v1, "subId":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    .line 1198
    const/16 v4, 0x20

    .line 1197
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    .end local v0    # "i":I
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private listenToPhoneState()V
    .locals 4

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_0

    .line 998
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initPhoneStateListener()V

    .line 1000
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string/jumbo v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method private registerDualSIMReachabilityListener()V
    .locals 1

    .prologue
    .line 579
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->mShowxdivert:Z

    if-nez v0, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->listen()V

    .line 583
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSIMAndSuscriptionReceiver:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->register()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAirplaneMode:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$AirplaneMode;->register()V

    .line 578
    return-void
.end method

.method private removeItemsForTablet()V
    .locals 6

    .prologue
    .line 948
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-eqz v5, :cond_2

    .line 949
    const-string/jumbo v5, "sim_calls"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 950
    .local v1, "sim_call_Pref":Landroid/preference/Preference;
    const-string/jumbo v5, "sim_sms"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 951
    .local v3, "sim_sms_Pref":Landroid/preference/Preference;
    const-string/jumbo v5, "sim_cellular_data"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 953
    .local v2, "sim_data_Pref":Landroid/preference/Preference;
    const-string/jumbo v5, "sim_activities"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 954
    .local v0, "mPreferenceCategoryActivities":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 955
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 956
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 958
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 959
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 960
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 962
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    .line 963
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 946
    .end local v0    # "mPreferenceCategoryActivities":Landroid/preference/PreferenceCategory;
    .end local v1    # "sim_call_Pref":Landroid/preference/Preference;
    .end local v2    # "sim_data_Pref":Landroid/preference/Preference;
    .end local v3    # "sim_sms_Pref":Landroid/preference/Preference;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method

.method private setDefaultDataAndSms(I)V
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 1136
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    .line 1137
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v1

    .line 1138
    .local v1, "mSimManagementExt":Lcom/mediatek/settings/ext/ISimManagementExt;
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1139
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1141
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {v1, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataState(I)V

    .line 1142
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_CT6M_SUPPORT:Z

    if-eqz v5, :cond_1

    .line 1144
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 1145
    .local v0, "enableBefore":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 1146
    .local v2, "preSubId":I
    const-string/jumbo v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1147
    const-string/jumbo v7, ", preSubId: "

    .line 1146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1149
    if-eq p1, v2, :cond_0

    .line 1150
    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1151
    if-eqz v0, :cond_0

    .line 1152
    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1153
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1159
    .end local v0    # "enableBefore":Z
    .end local v2    # "preSubId":I
    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataState(I)V

    .line 1135
    return-void

    .line 1157
    :cond_1
    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method public static setSMSPromptEnabled(ZLandroid/content/Context;)V
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1236
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1237
    .local v0, "value":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1238
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 1237
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1239
    const-string/jumbo v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void

    .line 1236
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 5
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1091
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1093
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/settings/cdma/CdmaUtils;->shouldSwichCapabilityForCalls(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b014c

    .line 1096
    const/4 v4, 0x0

    .line 1095
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1097
    return-void

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 1101
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->setRadioCapability(Landroid/content/Context;I)Z

    move-result v2

    .line 1101
    if-eqz v2, :cond_1

    .line 1103
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 1090
    .end local v0    # "subId":I
    :cond_1
    :goto_0
    return-void

    .line 1106
    :cond_2
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method

.method private static shouldDisableActivitesCategory(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, "shouldDisable":Z
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetion(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdamCardAndGsmCard(Landroid/content/Context;)Z

    move-result v0

    .line 1067
    .end local v0    # "shouldDisable":Z
    :goto_0
    const-string/jumbo v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldDisableActivitesCategory() .. shouldDisable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return v0

    .line 1065
    .restart local v0    # "shouldDisable":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 1112
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1113
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1115
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1117
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 1119
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 1120
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 1121
    return-object v1

    .line 1125
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private unRegisterDualSIMReachabilityListener()V
    .locals 1

    .prologue
    .line 588
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->mShowxdivert:Z

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSIMAndSuscriptionReceiver:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->unregister()V

    .line 592
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAirplaneMode:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$AirplaneMode;->unregister()V

    .line 593
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->unlisten()V

    .line 587
    return-void
.end method

.method private unlistenToPhoneState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1006
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_1

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1008
    const-string/jumbo v3, "phone"

    .line 1007
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1009
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 1005
    .end local v0    # "i":I
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimPref()V

    .line 219
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 204
    return-void
.end method

.method private updateCallValues()V
    .locals 8

    .prologue
    .line 298
    const-string/jumbo v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 299
    .local v3, "simPref":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 300
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 302
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 304
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v6, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 308
    const v6, 0x7f0b0233

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 316
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 318
    :goto_0
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 319
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isSingleSim()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 320
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/sim/SimSettings;->shouldDisableActivitesCategory(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->disableTheCategory()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    .end local v0    # "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v2    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    return-void

    .line 316
    .restart local v0    # "allPhoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v2    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    invoke-virtual {v5, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    .local v1, "defaultAccount":Landroid/telecom/PhoneAccount;
    goto :goto_0

    .line 322
    .end local v1    # "defaultAccount":Landroid/telecom/PhoneAccount;
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-nez v1, :cond_3

    .line 323
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0a3c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 322
    :goto_2
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2
.end method

.method private updateCallforawardPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 597
    iget-boolean v3, p0, Lcom/android/settings/sim/SimSettings;->mIsInForeground:Z

    if-nez v3, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_2

    .line 602
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAirplaneMode:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$AirplaneMode;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    invoke-virtual {v3, v1}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->isStateInService(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListeners:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    invoke-virtual {v3, v2}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->isStateInService(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->findSubIdBySlotId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 602
    :cond_1
    const/4 v0, 0x1

    .line 611
    .local v0, "isDisable":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mCallforwardPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 596
    return-void

    .line 601
    .end local v0    # "isDisable":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isDisable":Z
    goto :goto_0

    .line 609
    .end local v0    # "isDisable":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->findSubIdBySlotId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "isDisable":Z
    goto :goto_0

    .end local v0    # "isDisable":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isDisable":Z
    goto :goto_0

    :cond_5
    move v1, v2

    .line 611
    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 272
    const-string/jumbo v5, "sim_cellular_data"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 273
    .local v2, "simPref":Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 274
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 275
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    const v5, 0x7f0b0232

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[updateCellularDataValues] mSubInfoList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "sim_cellular_data"

    invoke-interface {v5, v6, v3, v7}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 281
    if-eqz v3, :cond_4

    .line 282
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    :goto_0
    const-string/jumbo v5, "ril.cdma.inecmmode"

    .line 289
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 291
    .local v1, "ecbMode":Z
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v0

    .line 292
    .local v0, "callStateIdle":Z
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->disableTheCategory()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v4

    .end local v0    # "callStateIdle":Z
    :cond_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    .end local v1    # "ecbMode":Z
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void

    .line 283
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    if-nez v3, :cond_0

    .line 284
    const v5, 0x7f0b0a3d

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSimPref()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->shouldDisableActivitesCategory(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1034
    const-string/jumbo v4, "sim_calls"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1035
    .local v1, "simCallsPref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1037
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1038
    .local v0, "accoutSum":I
    const-string/jumbo v4, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accountSum: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    if-le v0, v6, :cond_0

    .line 1040
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->isCapabilitySwitching()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v4, v5

    .line 1039
    :goto_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1043
    .end local v0    # "accoutSum":I
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    const-string/jumbo v4, "sim_sms"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1044
    .local v2, "simSmsPref":Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 1045
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->disableTheCategory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->isCapabilitySwitching()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1045
    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1032
    .end local v1    # "simCallsPref":Landroid/preference/Preference;
    .end local v2    # "simSmsPref":Landroid/preference/Preference;
    :cond_3
    return-void

    .line 1041
    .restart local v0    # "accoutSum":I
    .restart local v1    # "simCallsPref":Landroid/preference/Preference;
    .restart local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_0

    .line 1047
    .end local v0    # "accoutSum":I
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v2    # "simSmsPref":Landroid/preference/Preference;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-nez v4, :cond_2

    move v5, v6

    goto :goto_1
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 210
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 211
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 213
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 214
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 8

    .prologue
    const v7, 0x7f0b0a3c

    .line 227
    const-string/jumbo v4, "sim_sms"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 228
    .local v2, "simPref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 230
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    const v4, 0x7f0b0234

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[updateSmsValues] mSubInfoList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "sim_sms"

    invoke-interface {v4, v5, v3, v6}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "isSMSPrompt":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->isSMSPromptEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 239
    .local v1, "isSMSPrompt":Z
    const-string/jumbo v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSmsValues  isSmsPrompt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "isSMSPrompt":Z
    :goto_0
    const-string/jumbo v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSmsValues  sir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v3, :cond_4

    .line 246
    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 260
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/sim/SimSettings;->shouldDisableActivitesCategory(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->disableTheCategory()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/sim/SimSettings;->setSMSPromptEnabled(ZLandroid/content/Context;)V

    .line 226
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    return-void

    .line 240
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSmsValues  isSMSPromptEnabled() fail. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 251
    :cond_4
    if-nez v3, :cond_0

    .line 254
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateDefaultSmsSummary(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method private updateSubscriptions()V
    .locals 7

    .prologue
    .line 176
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 179
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 184
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 186
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_4

    .line 187
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 189
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 190
    .local v2, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 193
    if-nez v3, :cond_3

    const/4 v4, -0x1

    .line 192
    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->bindRadioPowerState(I)V

    .line 195
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    if-eqz v3, :cond_2

    .line 198
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    goto :goto_2

    .line 201
    .end local v2    # "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 175
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x58

    return v0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1087
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 147
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 150
    const-string/jumbo v0, "sim_cards"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initForSimStateChange()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initDualSIMReachability()V

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 970
    const-string/jumbo v0, "SimSettings"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 973
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterOnPhoneServiceStateChange()V

    .line 974
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 969
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mIsInForeground:Z

    .line 371
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->unlistenToPhoneState()V

    .line 381
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->onPause()V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->unRegisterDualSIMReachabilityListener()V

    .line 367
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 420
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 421
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x18000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    instance-of v3, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_1

    .line 425
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v3, "slot_id"

    check-cast p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-static {p2}, Lcom/android/settings/sim/SimSettings$SimPreference;->-wrap0(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 442
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 428
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string/jumbo v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 429
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 431
    :cond_2
    const-string/jumbo v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_3

    .line 432
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 434
    :cond_3
    const-string/jumbo v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_4

    .line 435
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 437
    :cond_4
    const-string/jumbo v3, "call_forward_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 438
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .restart local v2    # "newIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mIsInForeground:Z

    .line 340
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 347
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->listenToPhoneState()V

    .line 350
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->removeItemsForTablet()V

    .line 352
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->customizeSimDisplay()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->onResume(Landroid/content/Context;)V

    .line 359
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->registerDualSIMReachabilityListener()V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallforawardPreference()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->listen()V

    .line 336
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    .line 822
    const-string/jumbo v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener:onServiceStateChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    const-string/jumbo v2, ", state: "

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-direct {p0, p2, p1}, Lcom/android/settings/sim/SimSettings;->isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->handleRadioPowerSwitchComplete()V

    .line 827
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 821
    return-void
.end method

.method public setDefault(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 1130
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimSettings;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 1131
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 1132
    invoke-direct {p0, p2}, Lcom/android/settings/sim/SimSettings;->setDefaultDataAndSms(I)V

    .line 1128
    return-void
.end method
