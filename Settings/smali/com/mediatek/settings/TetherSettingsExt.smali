.class public Lcom/mediatek/settings/TetherSettingsExt;
.super Ljava/lang/Object;
.source "TetherSettingsExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/TetherSettingsExt$1;
    }
.end annotation


# instance fields
.field private mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothDun;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBtErrorIpv4:I

.field private mBtErrorIpv6:I

.field private mConnectService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field private mTetherIpv6:Landroid/preference/ListPreference;

.field private mUsbErrorIpv4:I

.field private mUsbErrorIpv6:I

.field public mUsbTetherType:Landroid/preference/ListPreference;

.field public mWifiTether:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/TetherSettingsExt;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/settings/TetherSettingsExt;Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 102
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    .line 478
    new-instance v0, Lcom/mediatek/settings/TetherSettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/TetherSettingsExt$1;-><init>(Lcom/mediatek/settings/TetherSettingsExt;)V

    .line 477
    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    .line 112
    const-string/jumbo v0, "TetherSettingsExt"

    const-string/jumbo v1, "TetherSettingsExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/mediatek/settings/TetherSettingsExt;->initServices()V

    .line 111
    return-void
.end method

.method private declared-synchronized initServices()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 287
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 288
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 289
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    .line 296
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    .line 297
    const-string/jumbo v2, "connectivity"

    .line 296
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    .line 300
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    .line 302
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothRegexs:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 284
    return-void

    .line 291
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "TetherSettingsExt"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;
    .locals 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BluetoothDun;

    .line 490
    .local v0, "Dun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-nez v0, :cond_1

    .line 491
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    return-object v1

    .line 494
    :cond_0
    new-instance v1, Lcom/mediatek/bluetooth/BluetoothDun;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;)V

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    goto :goto_0

    .line 498
    :cond_1
    return-object v0
.end method

.method public getBTErrorCode([Ljava/lang/String;)V
    .locals 10
    .param p1, "available"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 379
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v2, :cond_3

    .line 380
    iput v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    .line 381
    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    .line 382
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 383
    .local v1, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v6

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_2

    aget-object v0, v6, v2

    .line 384
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_1

    .line 385
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    if-nez v8, :cond_0

    .line 386
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    .line 388
    :cond_0
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    if-ne v8, v9, :cond_1

    .line 389
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0xf0

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    .line 383
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 378
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getIPV6String(II)Ljava/lang/String;
    .locals 5
    .param p1, "errorIpv4"    # I
    .param p2, "errorIpv6"    # I

    .prologue
    const/16 v4, 0x20

    .line 400
    const-string/jumbo v0, ""

    .line 401
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const-string/jumbo v1, "TetherSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[errorIpv4 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[errorIpv6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string/jumbo v3, "];"

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-nez p1, :cond_1

    .line 405
    if-ne p2, v4, :cond_1

    .line 406
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 407
    :cond_1
    if-nez p1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_2
    if-ne p2, v4, :cond_0

    .line 410
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "action.wifi.tethered_switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method public getUSBErrorCode([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "usbRegexs"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    const/4 v4, 0x0

    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, "usbError":I
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v3, :cond_0

    .line 420
    iput v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 421
    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 423
    :cond_0
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v1, p1, v5

    .line 424
    .local v1, "s":Ljava/lang/String;
    array-length v7, p3

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_4

    aget-object v0, p3, v3

    .line 425
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_2

    .line 426
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v8, :cond_3

    .line 427
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    if-nez v8, :cond_1

    .line 428
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 430
    :cond_1
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    if-ne v8, v9, :cond_2

    .line 431
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0xf0

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 424
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 434
    :cond_3
    if-nez v2, :cond_2

    .line 435
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 423
    .end local v0    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 442
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v3, :cond_8

    .line 443
    array-length v6, p2

    move v5, v4

    :goto_3
    if-ge v5, v6, :cond_8

    aget-object v1, p2, v5

    .line 444
    .restart local v1    # "s":Ljava/lang/String;
    array-length v7, p3

    move v3, v4

    :goto_4
    if-ge v3, v7, :cond_7

    aget-object v0, p3, v3

    .line 445
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 446
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_6

    .line 447
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    if-ne v8, v9, :cond_6

    .line 448
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0xf0

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 444
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 443
    .end local v0    # "regex":Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 457
    .end local v1    # "s":Ljava/lang/String;
    :cond_8
    return v2
.end method

.method public isUMSEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 307
    const-string/jumbo v2, "TetherSettingsExt"

    const-string/jumbo v3, " mMountService is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v5

    .line 311
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v2, "TetherSettingsExt"

    const-string/jumbo v3, "this device doesn\'t support UMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v5

    .line 312
    .end local v1    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TetherSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Util:RemoteException when isUsbMassStorageEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "TetherSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v3, "usb_tethering_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "index":I
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 152
    const-string/jumbo v5, "usb_tethering_type"

    .line 151
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    .line 154
    const v6, 0x7f0a004e

    .line 153
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    const-string/jumbo v3, "TetherSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange USB_TETHERING_TYPE value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v4

    .line 158
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "tethered_ipv6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "ipv6Value":I
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 162
    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-ne v1, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->setTetheringIpv6Enable(Z)V

    .line 164
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 165
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    .line 166
    const v6, 0x7f0a004c

    .line 165
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mWifiTether:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 274
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "mediatek.intent.action.WIFI_TETHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0139

    .line 278
    const/4 v4, 0x0

    .line 277
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 138
    const-string/jumbo v3, "usb_tethering_type"

    .line 139
    const/4 v4, 0x0

    .line 137
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "value":I
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    const v4, 0x7f0a004e

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method public updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "originSummary"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    iget v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateBtDunTether(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v0

    .line 471
    .local v0, "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 469
    :cond_0
    return-void
.end method

.method public updateBtTetherState(Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "btPrf"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v0

    .line 462
    .local v0, "dun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 463
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 460
    :goto_0
    return-void

    .line 465
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V
    .locals 4
    .param p1, "usbTether"    # Landroid/preference/SwitchPreference;
    .param p2, "bluetoothTether"    # Landroid/preference/SwitchPreference;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    const/4 v1, 0x0

    .line 327
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 332
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringIpv6Enable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 334
    .local v0, "ipv6Value":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 335
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    .line 336
    const v3, 0x7f0a004c

    .line 335
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    .end local v0    # "ipv6Value":I
    :cond_1
    return-void

    .line 331
    :cond_2
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 333
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "ipv6Value":I
    goto :goto_1
.end method

.method public updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "originSummary"    # Ljava/lang/String;
    .param p3, "usbTethered"    # Z
    .param p4, "usbAvailable"    # Z

    .prologue
    .line 352
    if-eqz p3, :cond_2

    .line 353
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    iget v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    iget v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_2
    if-eqz p4, :cond_0

    .line 360
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    if-eqz v0, :cond_3

    .line 362
    iget v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 363
    :cond_3
    const v0, 0x7f0b0537

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 365
    :cond_4
    const v0, 0x7f0b053c

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public updateUsbTypeListState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 373
    const-string/jumbo v0, "TetherSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set USB Tether Type state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 371
    :cond_0
    return-void
.end method
