.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;,
        Lcom/android/settings/TetherSettings$1;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mBundle:Landroid/os/Bundle;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private final mIntentType:Ljava/lang/String;

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMpdnSupport:Z

.field private mNfcWifiTethering:Landroid/preference/Preference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSecurityType:[Ljava/lang/String;

.field private final mSummary1:Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

.field private final mTitleKey1:Ljava/lang/String;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherSettings;)Lcom/mediatek/settings/TetherSettingsExt;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMpdnSupport:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherSettings;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TetherSettings;->onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateNfcWifiTetheringState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 150
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsPcKnowMe:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mMpdnSupport:Z

    .line 294
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    .line 293
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 477
    const-string/jumbo v0, "com.android.nfc"

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mPackageName:Ljava/lang/String;

    .line 478
    const-string/jumbo v0, "com.sonymobile.settings.preference.TETHERTITLE"

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTitleKey1:Ljava/lang/String;

    .line 479
    const-string/jumbo v0, "com.sonymobile.settings.preference.TETHERSUMMARY"

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mSummary1:Ljava/lang/String;

    .line 480
    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mIntentType:Ljava/lang/String;

    .line 481
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 482
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 483
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mBundle:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1008
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 1009
    .local v0, "iface":Ljava/lang/String;
    array-length v6, p1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, p1, v2

    .line 1010
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1011
    return-object v0

    .line 1009
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1008
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 1015
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getMetaDataResourceId(Ljava/lang/String;)I
    .locals 5
    .param p1, "metaKey"    # Ljava/lang/String;

    .prologue
    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.android.nfc"

    .line 526
    const/16 v4, 0x80

    .line 525
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 527
    .local v0, "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "mNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v1    # "mNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getNfcWifiTetheringSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string/jumbo v0, "com.sonymobile.settings.preference.TETHERSUMMARY"

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->getMetaDataResourceId(Ljava/lang/String;)I

    move-result v0

    .line 545
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->getStringFromResourcesObject(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNfcWifiTetheringTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const-string/jumbo v0, "com.sonymobile.settings.preference.TETHERTITLE"

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->getMetaDataResourceId(Ljava/lang/String;)I

    move-result v0

    .line 540
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->getStringFromResourcesObject(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_1

    .line 491
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.nfc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 492
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 498
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v2

    .line 498
    .restart local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 499
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method private getStringFromResourcesObject(I)Ljava/lang/String;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 508
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 509
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 511
    .local v1, "mResources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 515
    .end local v1    # "mResources":Landroid/content/res/Resources;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 516
    .local v0, "mNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 519
    .end local v0    # "mNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v5
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0b03dc

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 274
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 275
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 278
    const-string/jumbo v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 280
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 282
    const v3, 0x10403ac

    .line 281
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 284
    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    .line 283
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 287
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 288
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 289
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    .line 287
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 842
    const v6, 0x1070018

    .line 841
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 844
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const/high16 v5, 0x10000

    .line 847
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1092
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1095
    const-string/jumbo v1, "wifi_state"

    const/16 v2, 0xe

    .line 1094
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1096
    .local v0, "state":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 1097
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1098
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    .line 1100
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1099
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    .line 1091
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 1104
    :cond_2
    const-string/jumbo v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1105
    const-string/jumbo v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1104
    if-eqz v1, :cond_4

    .line 1106
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0

    .line 1107
    :cond_4
    const-string/jumbo v1, "action.wifi.tethered_switch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    .line 1110
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1109
    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    goto :goto_0
.end method

.method private openAllowTetherDialog(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 1125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1126
    const-class v2, Lcom/sonymobile/settings/TetherAllowDialog;

    .line 1125
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1127
    .local v0, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1124
    return-void
.end method

.method private openConfirmDialog(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 1117
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1118
    const-class v2, Lcom/sonymobile/settings/TetherConfirmationDialog;

    .line 1117
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1119
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1116
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 988
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 990
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 992
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b053c

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 993
    return-void

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 986
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 852
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string/jumbo v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 851
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 859
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->openConfirmDialog(I)V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 902
    iget v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v3, :pswitch_data_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 904
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 908
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 909
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 910
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 913
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 914
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b01c1

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 915
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 917
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 918
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 919
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 920
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 926
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v3, v5}, Lcom/mediatek/settings/TetherSettingsExt;->updateBtDunTether(Z)V

    .line 927
    const v3, 0x7f0b053e

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "summary":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 706
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/mediatek/settings/TetherSettingsExt;->getBTErrorCode([Ljava/lang/String;)V

    .line 707
    const/4 v3, 0x0

    .line 708
    .local v3, "bluetoothErrored":Z
    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v8, p3, v11

    .line 709
    .local v8, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_1
    if-ge v10, v14, :cond_1

    aget-object v7, v13, v10

    .line 710
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v3, 0x1

    .line 709
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 708
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 714
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 715
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_3

    .line 716
    return-void

    .line 717
    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 718
    .local v6, "btState":I
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "btState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v10, 0xd

    if-ne v6, v10, :cond_4

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b01c2

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 705
    :goto_2
    return-void

    .line 722
    :cond_4
    const/16 v10, 0xb

    if-ne v6, v10, :cond_5

    .line 723
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 724
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b01c1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 726
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 728
    .local v4, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v10}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v2

    .line 729
    .local v2, "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    const/16 v10, 0xc

    if-ne v6, v10, :cond_d

    .line 730
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v10

    if-nez v10, :cond_7

    .line 731
    :cond_6
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v10

    .line 729
    if-eqz v10, :cond_d

    .line 732
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 734
    const/4 v5, 0x0

    .line 735
    .local v5, "bluetoothTethered":I
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 736
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 737
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bluetooth Tethered PAN devices = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 740
    invoke-virtual {v2}, Lcom/mediatek/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    add-int/2addr v5, v10

    .line 741
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bluetooth tethered total devices = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_9
    const/4 v10, 0x1

    if-le v5, v10, :cond_a

    .line 745
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 747
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 746
    const v11, 0x7f0b0540

    .line 745
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 748
    .local v9, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 749
    .end local v9    # "summary":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x1

    if-ne v5, v10, :cond_b

    .line 751
    const v10, 0x7f0b053f

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 752
    .restart local v9    # "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 753
    .end local v9    # "summary":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_c

    .line 754
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0543

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 756
    :cond_c
    const v10, 0x7f0b053e

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 757
    .restart local v9    # "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 760
    .end local v5    # "bluetoothTethered":I
    .end local v9    # "summary":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0542

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateNfcWifiTetheringState()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 944
    const-string/jumbo v6, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNfcWifiTetheringState()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 947
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 950
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getNfcWifiTetheringTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getNfcWifiTetheringSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 961
    const-string/jumbo v9, "airplane_mode_on"

    .line 960
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    .line 963
    .local v2, "isAirplaneModeEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_1

    .line 964
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 965
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_1

    .line 966
    const-string/jumbo v6, "TetherSettings"

    const-string/jumbo v9, "mWifiManager is null"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 973
    .local v4, "isWifiApEnabled":Z
    :goto_2
    const-string/jumbo v6, "appops"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 975
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const-string/jumbo v6, "com.android.nfc"

    .line 974
    const/16 v9, 0x17

    .line 975
    const/16 v10, 0x403

    .line 974
    invoke-virtual {v0, v9, v10, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 977
    .local v5, "mode":I
    if-eqz v5, :cond_2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    :cond_2
    const/4 v3, 0x1

    .line 978
    .local v3, "isGranted":Z
    :goto_3
    if-nez v4, :cond_3

    if-eqz v3, :cond_9

    .line 981
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    if-nez v2, :cond_b

    if-nez v4, :cond_a

    .end local v3    # "isGranted":Z
    :goto_5
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 943
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "isAirplaneModeEnabled":Z
    .end local v4    # "isWifiApEnabled":Z
    .end local v5    # "mode":I
    :cond_4
    return-void

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 960
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isAirplaneModeEnabled":Z
    goto :goto_1

    .line 971
    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v6

    const/16 v9, 0xd

    if-ne v6, v9, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "isWifiApEnabled":Z
    goto :goto_2

    .end local v4    # "isWifiApEnabled":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "isWifiApEnabled":Z
    goto :goto_2

    .line 977
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v5    # "mode":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "isGranted":Z
    goto :goto_3

    .line 979
    :cond_9
    const-string/jumbo v6, "TetherSettings"

    const-string/jumbo v9, "Disable NFC Wi-Fi tethering since WRITE_SETTINGS is not granted"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v3, v7

    .line 981
    goto :goto_5

    :cond_b
    move v3, v8

    goto :goto_5
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 573
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 575
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 584
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateStateExt([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    return-void

    .line 589
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateNfcWifiTetheringState()V

    .line 582
    return-void
.end method

.method private updateStateExt([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1061
    const-string/jumbo v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    const-string/jumbo v2, ", mUsbConfigured:  "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    const-string/jumbo v2, ", mUsbHwDisconnected: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    const-string/jumbo v2, ", checked: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1064
    const-string/jumbo v2, ", mUsbUnTetherDone: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1064
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1064
    const-string/jumbo v2, ", mUsbTetherDone: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1065
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1065
    const-string/jumbo v2, ", tetherfail: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1065
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1066
    const-string/jumbo v2, ", mIsPcKnowMe: "

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1066
    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsPcKnowMe:Z

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1071
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    if-eqz v0, :cond_2

    .line 1076
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 1088
    :cond_1
    :goto_0
    return v3

    .line 1072
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mIsPcKnowMe:Z

    if-nez v0, :cond_1

    .line 1073
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0

    .line 1079
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    if-eqz v0, :cond_6

    .line 1084
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0

    .line 1080
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_1

    .line 1081
    :cond_7
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 605
    const-string/jumbo v10, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 606
    .local v2, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v10, :cond_2

    :cond_0
    const/4 v6, 0x0

    .line 607
    .local v6, "usbAvailable":Z
    :goto_0
    const/4 v7, 0x0

    .line 608
    .local v7, "usbError":I
    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    move v11, v10

    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v4, p1, v11

    .line 609
    .local v4, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_2
    if-ge v10, v14, :cond_3

    aget-object v3, v13, v10

    .line 610
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 611
    if-nez v7, :cond_1

    .line 612
    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v7

    .line 609
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 606
    .end local v3    # "regex":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "usbAvailable":Z
    .end local v7    # "usbError":I
    :cond_2
    const/4 v6, 0x1

    .restart local v6    # "usbAvailable":Z
    goto :goto_0

    .line 608
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v7    # "usbError":I
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_1

    .line 617
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 618
    .local v9, "usbTethered":Z
    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v12, v0

    move v11, v10

    :goto_3
    if-ge v11, v12, :cond_7

    aget-object v4, p2, v11

    .line 619
    .restart local v4    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_4
    if-ge v10, v14, :cond_6

    aget-object v3, v13, v10

    .line 620
    .restart local v3    # "regex":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v9, 0x1

    .line 619
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 618
    .end local v3    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_3

    .line 623
    .end local v4    # "s":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    .line 624
    .local v8, "usbErrored":Z
    const/4 v10, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    move v11, v10

    :goto_5
    if-ge v11, v12, :cond_a

    aget-object v4, p3, v11

    .line 625
    .restart local v4    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v14, v13

    :goto_6
    if-ge v10, v14, :cond_9

    aget-object v3, v13, v10

    .line 626
    .restart local v3    # "regex":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v8, 0x1

    .line 625
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 624
    .end local v3    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_5

    .line 631
    .end local v4    # "s":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    .line 632
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 631
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1, v11}, Lcom/mediatek/settings/TetherSettingsExt;->getUSBErrorCode([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 634
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateUsbState - usbTethered : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " usbErrored: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 635
    const-string/jumbo v12, " usbAvailable: "

    .line 634
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    if-eqz v9, :cond_b

    .line 641
    const-string/jumbo v10, "TetherSettings"

    const-string/jumbo v11, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 643
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 645
    const v10, 0x7f0b0538

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 646
    .local v5, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11, v5, v9, v6}, Lcom/mediatek/settings/TetherSettingsExt;->updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V

    .line 647
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    .line 648
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 649
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 650
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v5    # "summary":Ljava/lang/String;
    :goto_7
    return-void

    .line 652
    :cond_b
    if-eqz v6, :cond_e

    .line 653
    if-nez v7, :cond_d

    .line 654
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0537

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 658
    :goto_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v9, v6}, Lcom/mediatek/settings/TetherSettingsExt;->updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V

    .line 659
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    if-eqz v10, :cond_c

    .line 660
    const-string/jumbo v10, "TetherSettings"

    const-string/jumbo v11, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 665
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 668
    :cond_c
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 669
    const-string/jumbo v12, " mUsbTethering: "

    .line 668
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 669
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    .line 668
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 670
    const-string/jumbo v12, " mUsbTetherCheckEnable: "

    .line 668
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 670
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 668
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 656
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b053c

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 671
    :cond_e
    if-eqz v8, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b053c

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 673
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 674
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 676
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 677
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v10, :cond_10

    .line 678
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0539

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 682
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 684
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v10, :cond_11

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v10, :cond_12

    .line 691
    :cond_11
    const-string/jumbo v10, "TetherSettings"

    const-string/jumbo v11, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b0537

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 696
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    .line 697
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 700
    :goto_9
    const-string/jumbo v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 684
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbConfigured:Z

    if-nez v10, :cond_11

    .line 685
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v11, 0x7f0b053a

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 687
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 688
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/TetherSettings;->mUsbTethering:Z

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1043
    const v0, 0x7f0b0d42

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 864
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 865
    if-nez p1, :cond_2

    .line 866
    if-ne p2, v1, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 868
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 880
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 874
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 877
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 882
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 883
    if-ne p2, v1, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0

    .line 886
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 887
    if-ne p2, v1, :cond_0

    .line 888
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 890
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 891
    if-ne p2, v1, :cond_0

    .line 892
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 894
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 895
    if-ne p2, v1, :cond_0

    .line 896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1019
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1021
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1029
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1033
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1034
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1035
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 1036
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    .line 1034
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1018
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    const-string/jumbo v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 183
    :cond_0
    const v8, 0x7f080075

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 185
    const-string/jumbo v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 187
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v9, "no_config_tethering"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    .line 189
    :cond_1
    iput-boolean v12, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 190
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 191
    return-void

    .line 194
    :cond_2
    new-instance v8, Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/mediatek/settings/TetherSettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 201
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 203
    const/4 v10, 0x5

    .line 202
    invoke-virtual {v1, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 207
    :cond_3
    const-string/jumbo v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 206
    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 208
    const-string/jumbo v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 209
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string/jumbo v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 210
    const-string/jumbo v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 213
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 215
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 216
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 217
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 219
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    const/4 v5, 0x1

    .line 220
    .local v5, "usbAvailable":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    .line 221
    .local v7, "wifiAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_9

    const/4 v2, 0x1

    .line 223
    .local v2, "bluetoothAvailable":Z
    :goto_2
    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 224
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 237
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :goto_3
    if-nez v2, :cond_b

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 263
    const v9, 0x1070018

    .line 262
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 177
    return-void

    .line 219
    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "usbAvailable":Z
    goto :goto_0

    .line 220
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "wifiAvailable":Z
    goto :goto_1

    .line 221
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "bluetoothAvailable":Z
    goto :goto_2

    .line 231
    :cond_a
    new-instance v8, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v9}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    goto :goto_3

    .line 252
    :cond_b
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 253
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 254
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    :goto_5
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBtTetherState(Landroid/preference/SwitchPreference;)V

    goto :goto_4

    .line 256
    :cond_c
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 305
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 307
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 308
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v1

    .line 311
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 769
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 770
    .local v4, "enable":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 772
    const-string/jumbo v9, "tether_dun_required"

    .line 771
    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 773
    .local v3, "dunReq":I
    const-string/jumbo v8, "enable_wifi_ap"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 774
    if-eqz v4, :cond_2

    .line 775
    iget-boolean v8, p0, Lcom/android/settings/TetherSettings;->mMpdnSupport:Z

    if-nez v8, :cond_1

    if-ne v3, v11, :cond_1

    .line 776
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->openAllowTetherDialog(I)V

    .line 830
    :cond_0
    :goto_0
    return v10

    .line 778
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 784
    :cond_3
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v8, v10}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 786
    :cond_4
    const-string/jumbo v8, "enable_bluetooth_tethering"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 787
    if-eqz v4, :cond_6

    .line 788
    iget-boolean v8, p0, Lcom/android/settings/TetherSettings;->mMpdnSupport:Z

    if-nez v8, :cond_5

    if-ne v3, v11, :cond_5

    .line 789
    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->openAllowTetherDialog(I)V

    goto :goto_0

    .line 791
    :cond_5
    invoke-direct {p0, v12}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 794
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 797
    :cond_7
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 798
    const/4 v5, 0x0

    .line 800
    .local v5, "errored":Z
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 801
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "tethered":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 804
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 805
    const/4 v5, 0x1

    .line 807
    :cond_8
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 808
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_9

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 809
    :cond_9
    if-eqz v5, :cond_a

    .line 810
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0b0543

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 814
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto/16 :goto_0

    .line 812
    :cond_a
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0b0542

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 816
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "errored":Z
    .end local v7    # "tethered":[Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "usb_tether_settings"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 817
    if-eqz v4, :cond_d

    .line 818
    iget-boolean v8, p0, Lcom/android/settings/TetherSettings;->mMpdnSupport:Z

    if-nez v8, :cond_c

    if-ne v3, v11, :cond_c

    .line 819
    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->openAllowTetherDialog(I)V

    goto/16 :goto_0

    .line 821
    :cond_c
    invoke-direct {p0, v11}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 824
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 827
    :cond_e
    invoke-direct {p0, v10}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 1001
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v0, p2}, Lcom/mediatek/settings/TetherSettingsExt;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 1004
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 471
    const-string/jumbo v0, "nfc_wifi_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mNfcWifiTethering:Landroid/preference/Preference;

    .line 472
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateNfcWifiTetheringState()V

    .line 469
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    const-string/jumbo v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 404
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 406
    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 408
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 409
    if-eqz v1, :cond_0

    .line 410
    const v4, 0x7f0b069d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 412
    :cond_0
    return-void

    .line 415
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 421
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v4}, Lcom/mediatek/settings/TetherSettingsExt;->isUMSEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 422
    const-string/jumbo v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMassStorageActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v4, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v4, p0, v7}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 427
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 442
    const v5, 0x11200bf

    .line 441
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    :cond_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/settings/TetherSettingsExt;->onStart(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 451
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 452
    :cond_3
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v4, :cond_4

    .line 453
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 457
    :cond_4
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_5

    .line 458
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 460
    :cond_5
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_6

    .line 461
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 403
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 554
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 551
    :cond_3
    return-void
.end method
