.class public Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;
    }
.end annotation


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "bandwidth_usage"

.field private static final BLOCKED_CATEGORY:Ljava/lang/String; = "blocked_category"

.field private static final CONFIG_SUBTEXT:I = 0x7f0b03dc

.field private static final CONNECTED_CATEGORY:Ljava/lang/String; = "connected_category"

.field private static final DIALOG_AP_CLIENT_DETAIL:I = 0x3

.field private static final DIALOG_AP_SETTINGS:I = 0x2

.field private static final DIALOG_WPS_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TetherWifiSettings"

.field private static final WIFI_AP_AUTO_CHANNEL_TEXT:I = 0x7f0b0060

.field private static final WIFI_AP_AUTO_CHANNEL_WIDTH_TEXT:I = 0x7f0b0061

.field private static final WIFI_AP_FIX_CHANNEL_WIDTH_TEXT:I = 0x7f0b0062

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_AUTO_DISABLE:Ljava/lang/String; = "wifi_auto_disable"

.field private static final WPS_CONNECT:Ljava/lang/String; = "wps_connect"


# instance fields
.field private mBandwidth:Landroid/preference/Preference;

.field private mBlockedCategory:Landroid/preference/PreferenceCategory;

.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedCategory:Landroid/preference/PreferenceCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDetailView:Landroid/view/View;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

.field private mWifiAutoDisable:Landroid/preference/ListPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWpsConnect:Landroid/preference/Preference;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 100
    new-instance v0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 310
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 311
    .local v0, "iface":Ljava/lang/String;
    array-length v6, p1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, p1, v2

    .line 312
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    return-object v0

    .line 311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 317
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleWifiApClientsChanged()V
    .locals 7

    .prologue
    .line 366
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 367
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 368
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    .line 369
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 370
    const-string/jumbo v4, "@M_TetherWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "client number is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 372
    .local v0, "client":Landroid/net/wifi/HotspotClient;
    new-instance v3, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V

    .line 373
    .local v3, "preference":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v4, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setMacAddress(Ljava/lang/String;)V

    .line 374
    iget-boolean v4, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 376
    const v5, 0x7f0b0072

    .line 375
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 378
    const-string/jumbo v4, "@M_TetherWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "blocked client MAC is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 381
    const v5, 0x7f0b0071

    .line 380
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    const-string/jumbo v4, "@M_TetherWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "connected client MAC is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0    # "client":Landroid/net/wifi/HotspotClient;
    .end local v3    # "preference":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 387
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 388
    .local v2, "preference":Landroid/preference/Preference;
    const v4, 0x7f0b0080

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 389
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 392
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 393
    .restart local v2    # "preference":Landroid/preference/Preference;
    const v4, 0x7f0b0081

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 394
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 365
    .end local v1    # "client$iterator":Ljava/util/Iterator;
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 399
    :goto_0
    return-void

    .line 402
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    goto :goto_0

    .line 408
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->removeDialog(I)V

    goto :goto_0

    .line 412
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->removeDialog(I)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const v9, 0x7f0b03dc

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 190
    const-string/jumbo v4, "wifi"

    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 192
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    .line 195
    const-string/jumbo v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 196
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 198
    const-string/jumbo v3, "wlan"

    .line 199
    const-string/jumbo v4, "SSID"

    .line 201
    const v5, 0x10403ac

    .line 200
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v3, v4, v5}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 203
    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    .line 202
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 206
    .local v1, "index":I
    const-string/jumbo v3, "@M_TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 208
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 209
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    .line 207
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPreferenceState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 421
    const-string/jumbo v0, "@M_TetherWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferenceState, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    return-void
.end method


# virtual methods
.method createTetherWifiApEnabler()Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 183
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;-><init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V

    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x186a7

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 321
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 323
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 330
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 331
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 336
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 338
    const v2, 0x7f0b013a

    .line 337
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 341
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 342
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    .line 340
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "client"    # Landroid/net/wifi/HotspotClient;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f13012d

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 348
    iget-boolean v0, p2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v0, :cond_1

    .line 349
    const-string/jumbo v0, "@M_TetherWifiSettings"

    const-string/jumbo v1, "onClick,client is blocked, unblock now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 346
    :cond_0
    return-void

    .line 352
    :cond_1
    const-string/jumbo v0, "@M_TetherWifiSettings"

    const-string/jumbo v1, "onClick,client isn\'t blocked, block now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->closeSpinnerDialog()V

    .line 359
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 132
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-string/jumbo v3, "wifi_auto_disable"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    .line 133
    const-string/jumbo v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 134
    .local v2, "wifiApSettings":Landroid/preference/Preference;
    const-string/jumbo v3, "wps_connect"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    .line 135
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 136
    const-string/jumbo v3, "bandwidth_usage"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    .line 137
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 145
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->initWifiTethering()V

    .line 147
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "connected_category"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    .line 152
    const-string/jumbo v3, "blocked_category"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 154
    const v4, 0x7f040153

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    .line 126
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 242
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0, p0, v5}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 245
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v4

    .line 246
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 247
    new-instance v1, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, "d":Landroid/app/Dialog;
    const-string/jumbo v4, "@M_TetherWifiSettings"

    const-string/jumbo v5, "onCreateDialog, return dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v1

    .line 250
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 251
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 252
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 253
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "parent":Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 255
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    const v5, 0x7f0b0073

    .line 255
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 257
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    .line 255
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 259
    new-instance v5, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;

    invoke-direct {v5, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    .line 258
    const/high16 v6, 0x1040000

    .line 255
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 264
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2

    .line 267
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    return-object v5
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->pause()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "@M_TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string/jumbo v1, "wifi_auto_disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 275
    const-string/jumbo v3, "wifi_hotspot_auto_disable"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 274
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    const-string/jumbo v1, "@M_TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange auto disable value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 277
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v5, 0x7f1302ab

    const/4 v6, 0x3

    .line 285
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 287
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 288
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->showDialog(I)V

    .line 306
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 290
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->showDialog(I)V

    goto :goto_0

    .line 291
    :cond_2
    instance-of v3, p2, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {p0, v6}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->removeDialog(I)V

    move-object v0, p2

    .line 293
    check-cast v0, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    .line 295
    .local v0, "client":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v4, 0x7f1301d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_1
    invoke-virtual {p0, v6}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->showDialog(I)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "ipAddr":Ljava/lang/String;
    const-string/jumbo v3, "@M_TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connected client ip address is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v4, 0x7f1302ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 217
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v1}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->resume()V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_hotspot_auto_disable"

    .line 223
    const/4 v3, 0x0

    .line 222
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "value":I
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    .end local v0    # "value":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->createTetherWifiApEnabler()Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    .line 163
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 172
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mTetherWifiApEnabler:Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/TetherWifiApEnabler;->teardownSwitchBar()V

    .line 170
    :cond_0
    return-void
.end method
