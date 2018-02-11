.class public Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;
.super Landroid/app/Fragment;
.source "TetherWifiApEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;
    }
.end annotation


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTetherChoice:I

.field private mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

.field mWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherChoice:I

    .line 80
    new-instance v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWfcSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWfcSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V
    .locals 1
    .param p1, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherChoice:I

    .line 80
    new-instance v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler$1;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setupSwitchBar()V

    .line 121
    invoke-virtual {p0, p2}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->init(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->commitFragment()V

    .line 127
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWfcSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWfcSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 117
    return-void
.end method

.method private commitFragment()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 449
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v1, "TetherWifiApEnabler"

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 450
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 445
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private enableWifiSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 170
    const-string/jumbo v2, "airplane_mode_on"

    .line 169
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 172
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 168
    :goto_1
    return-void

    .line 169
    .end local v0    # "isAirplaneMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isAirplaneMode":Z
    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 347
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->enableWifiSwitch()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 308
    invoke-direct {p0, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setStartTime(Z)V

    .line 309
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v5, 0x7f0b03d5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 319
    .local v2, "eableEndTime":J
    const-string/jumbo v4, "WifiHotspotPerformanceTest"

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn on end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 321
    const-string/jumbo v6, "]"

    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, v8}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchChecked(Z)V

    .line 323
    invoke-direct {p0, v8}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 324
    invoke-direct {p0, v8}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setStartTime(Z)V

    goto :goto_0

    .line 327
    .end local v2    # "eableEndTime":J
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchChecked(Z)V

    .line 328
    invoke-direct {p0, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 329
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v4, :cond_0

    .line 330
    const-string/jumbo v4, "TetherWifiApEnabler"

    const-string/jumbo v5, "wifi_stopping"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v5, 0x7f0b03d6

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 335
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 336
    .local v0, "disableEndTime":J
    const-string/jumbo v4, "WifiHotspotPerformanceTest"

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn off end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 338
    const-string/jumbo v6, "]"

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, v7}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchChecked(Z)V

    .line 340
    invoke-direct {p0, v8}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 341
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v4, :cond_1

    .line 342
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->enableWifiSwitch()V

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcast()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action.wifi.tethered_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "wifiTetherIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method private setStartTime(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 424
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 425
    const-string/jumbo v5, "wifi_hotspot_start_time"

    .line 423
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 427
    .local v2, "startTime":J
    if-eqz p1, :cond_1

    .line 428
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 430
    const-string/jumbo v5, "wifi_hotspot_start_time"

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 429
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 432
    const-string/jumbo v4, "TetherWifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const-wide/16 v0, 0x0

    .line 436
    .local v0, "newValue":J
    const-string/jumbo v4, "TetherWifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 438
    const-string/jumbo v5, "wifi_hotspot_start_time"

    .line 437
    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mStateMachineEvent:Z

    .line 353
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->sendBroadcast()V

    .line 357
    const-string/jumbo v0, "TetherWifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSwitchChecked checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mStateMachineEvent:Z

    .line 351
    return-void
.end method

.method private setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mStateMachineEvent:Z

    .line 362
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 365
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mStateMachineEvent:Z

    .line 360
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 389
    iput p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherChoice:I

    .line 390
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    const-string/jumbo v1, "TetherWifiApEnabler"

    .line 395
    const-string/jumbo v2, "startProvisioningIfNecessary, startActivityForResult"

    .line 394
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherChoice:I

    if-nez v0, :cond_0

    .line 413
    const-string/jumbo v0, "TetherWifiApEnabler"

    const-string/jumbo v1, "startTethering, setSoftapEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->showWfcTetheringAlertDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-string/jumbo v0, "TetherWifiApEnabler"

    const-string/jumbo v1, "startTethering, setSoftapEnabled continued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSoftapEnabled(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 278
    const/4 v5, 0x0

    .line 279
    .local v5, "wifiTethered":Z
    const/4 v4, 0x0

    .line 281
    .local v4, "wifiErrored":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 282
    check-cast v2, Ljava/lang/String;

    .line 283
    .local v2, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    .line 284
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    .line 283
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 281
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 287
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    .restart local v0    # "o":Ljava/lang/Object;
    move-object v2, v0

    .line 288
    check-cast v2, Ljava/lang/String;

    .line 289
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    .line 290
    .restart local v1    # "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 289
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 287
    .end local v1    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 294
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_7

    .line 295
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 296
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 277
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 297
    :cond_7
    if-eqz v4, :cond_6

    .line 298
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v6, :cond_6

    .line 299
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v7, 0x7f0b0349

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method

.method private updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 16
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 205
    const/4 v9, 0x0

    .line 206
    .local v9, "wifiTethered":Z
    const/4 v8, 0x0

    .line 208
    .local v8, "wifiErrored":Z
    const/4 v6, 0x0

    .line 209
    .local v6, "wifiErrorIpv4":I
    const/16 v7, 0x10

    .line 210
    .local v7, "wifiErrorIpv6":I
    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v1, p1, v11

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    .line 211
    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_1
    if-ge v10, v14, :cond_2

    aget-object v2, v13, v10

    .line 213
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 214
    if-nez v6, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v3}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    and-int/lit8 v6, v15, 0xf

    .line 217
    :cond_0
    const/16 v15, 0x10

    if-ne v7, v15, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v3}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    and-int/lit16 v7, v15, 0xf0

    .line 212
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 210
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 224
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    move v11, v10

    :goto_2
    if-ge v11, v12, :cond_6

    aget-object v1, p2, v11

    .restart local v1    # "o":Ljava/lang/Object;
    move-object v3, v1

    .line 225
    check-cast v3, Ljava/lang/String;

    .line 226
    .restart local v3    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_3
    if-ge v10, v14, :cond_5

    aget-object v2, v13, v10

    .line 227
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 228
    const/4 v9, 0x1

    .line 229
    sget-boolean v15, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v15, :cond_4

    .line 230
    const/16 v15, 0x10

    if-ne v7, v15, :cond_4

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15, v3}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    and-int/lit16 v7, v15, 0xf0

    .line 226
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 224
    .end local v2    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_2

    .line 238
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    move v11, v10

    :goto_4
    if-ge v11, v12, :cond_9

    aget-object v1, p3, v11

    .restart local v1    # "o":Ljava/lang/Object;
    move-object v3, v1

    .line 239
    check-cast v3, Ljava/lang/String;

    .line 240
    .restart local v3    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_5
    if-ge v10, v14, :cond_8

    aget-object v2, v13, v10

    .line 241
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 242
    const/4 v8, 0x1

    .line 240
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 238
    .end local v2    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_4

    .line 247
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v9, :cond_c

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 249
    .local v5, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    .line 251
    const v11, 0x10403ac

    .line 250
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    .restart local v3    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    const v11, 0x7f0b03d7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 254
    if-nez v5, :cond_b

    .end local v3    # "s":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x0

    aput-object v3, v11, v12

    .line 252
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "tetheringActive":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v10, :cond_a

    .line 257
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mTetherSettingsEx:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v12, v6, v7}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    .end local v4    # "tetheringActive":Ljava/lang/String;
    .end local v5    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :goto_7
    return-void

    .line 254
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 260
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    if-eqz v8, :cond_a

    .line 261
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v10, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0349

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "wifi"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 147
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 149
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    const v1, 0x1070018

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 384
    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 404
    if-nez p1, :cond_0

    .line 405
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->startTethering()V

    .line 402
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->sendBroadcast()V

    .line 372
    iget-boolean v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 373
    return-void

    .line 375
    :cond_0
    const-string/jumbo v0, "TetherWifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchChanged, hotspot switch isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz p2, :cond_1

    .line 377
    invoke-direct {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->startProvisioningIfNecessary(I)V

    .line 369
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->enableWifiSwitch()V

    .line 159
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->setSwitchEnabled(Z)V

    .line 181
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0349

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 131
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 136
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 193
    const-string/jumbo v1, "wlan"

    .line 194
    const-string/jumbo v2, "SSID"

    .line 195
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    .line 196
    const v4, 0x10403ac

    .line 195
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v1, v2, v3}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->mContext:Landroid/content/Context;

    .line 199
    const v3, 0x7f0b03d7

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 200
    if-nez p1, :cond_1

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 198
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void

    .line 200
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
