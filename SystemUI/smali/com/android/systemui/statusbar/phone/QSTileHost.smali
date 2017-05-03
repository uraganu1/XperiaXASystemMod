.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mAudioProfile:Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;

.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotKnot:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

.field private final mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/mediatek/systemui/statusbar/policy/HotKnotController;Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotation"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p7, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p8, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p9, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p10, "flashlight"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p11, "nfc"    # Lcom/sonymobile/systemui/statusbar/policy/NFCController;
    .param p12, "lte"    # Lcom/sonymobile/systemui/statusbar/policy/LTEController;
    .param p13, "stamina"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
    .param p14, "datatraffic"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;
    .param p15, "screenmirroring"    # Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;
    .param p16, "tethering"    # Lcom/sonymobile/systemui/statusbar/policy/TetheringController;
    .param p17, "throwcontroller"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowController;
    .param p18, "volte"    # Lcom/sonymobile/systemui/statusbar/policy/VolteController;
    .param p19, "userSwitcher"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p20, "keyguard"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p21, "security"    # Lcom/android/systemui/statusbar/policy/SecurityController;
    .param p22, "hotknot"    # Lcom/mediatek/systemui/statusbar/policy/HotKnotController;
    .param p23, "audioprofile"    # Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 158
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 159
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 160
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 161
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 162
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 163
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 164
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 165
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 166
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 167
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 168
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 171
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotKnot:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    .line 173
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAudioProfile:Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;

    .line 176
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    .line 177
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    .line 178
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    .line 179
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    .line 180
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

    .line 181
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    .line 182
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    .line 183
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    .line 185
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 186
    const/16 v3, 0xa

    .line 185
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 187
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 188
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 190
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sysui_qs_tiles"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    .line 224
    return-void
.end method

.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 4
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 396
    invoke-static {v1}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v0

    .line 398
    .local v0, "quickSettingsPlugin":Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 399
    :cond_0
    const-string/jumbo v1, "bt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 400
    :cond_1
    const-string/jumbo v1, "inversion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 401
    :cond_2
    const-string/jumbo v1, "cell"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 402
    :cond_3
    const-string/jumbo v1, "airplane"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 403
    :cond_4
    const-string/jumbo v1, "dnd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DndTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 404
    :cond_5
    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 405
    :cond_6
    const-string/jumbo v1, "flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 406
    :cond_7
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 407
    :cond_8
    const-string/jumbo v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 408
    :cond_9
    const-string/jumbo v1, "hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    :cond_16
    const-string/jumbo v1, "volume_panel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lcom/android/systemui/qs/tiles/VolumeTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/VolumeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    :cond_17
    const-string/jumbo v1, "audiofx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/systemui/qs/tiles/AudiofxTile;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AudiofxTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 410
    :cond_a
    const-string/jumbo v1, "hotknot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isMtkHotKnotSupport()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 411
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/HotKnotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 412
    :cond_b
    const-string/jumbo v1, "audioprofile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isMtkAudioProfilesSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 413
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 416
    :cond_c
    const-string/jumbo v1, "dataconnection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 420
    :cond_d
    const-string/jumbo v1, "simdataconnection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 424
    :cond_e
    const-string/jumbo v1, "dulsimsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 428
    :cond_f
    const-string/jumbo v1, "apnsettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/mediatek/systemui/statusbar/util/SIMHelper;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 434
    :cond_10
    const-string/jumbo v1, "intent("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    return-object v1

    .line 417
    :cond_11
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v1

    .line 421
    :cond_12
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 423
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 422
    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    return-object v1

    .line 425
    :cond_13
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 427
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 426
    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/systemui/qs/tiles/ext/DualSimSettingsTile;

    return-object v1

    .line 429
    :cond_14
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 431
    new-instance v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-direct {v1, p0}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 430
    invoke-interface {v0, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    return-object v1

    .line 435
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 194
    return-void
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataTrafficController()Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mDataTraffic:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHotKnotController()Lcom/mediatek/systemui/statusbar/policy/HotKnotController;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotKnot:Lcom/mediatek/systemui/statusbar/policy/HotKnotController;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLTEController()Lcom/sonymobile/systemui/statusbar/policy/LTEController;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLTE:Lcom/sonymobile/systemui/statusbar/policy/LTEController;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNFCController()Lcom/sonymobile/systemui/statusbar/policy/NFCController;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNFC:Lcom/sonymobile/systemui/statusbar/policy/NFCController;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getScreenMirroringController()Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mScreenMirroring:Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getStaminaController()Lcom/sonymobile/systemui/statusbar/policy/StaminaController;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStamina:Lcom/sonymobile/systemui/statusbar/policy/StaminaController;

    return-object v0
.end method

.method public getTetheringController()Lcom/sonymobile/systemui/statusbar/policy/TetheringController;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTethering:Lcom/sonymobile/systemui/statusbar/policy/TetheringController;

    return-object v0
.end method

.method public getThrowController()Lcom/sonymobile/systemui/statusbar/policy/ThrowController;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mThrow:Lcom/sonymobile/systemui/statusbar/policy/ThrowController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getVolteController()Lcom/sonymobile/systemui/statusbar/policy/VolteController;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolte:Lcom/sonymobile/systemui/statusbar/policy/VolteController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method protected loadTileSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 440
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f090068

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 441
    const v8, 0x7f090060

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "defaultTileList":Ljava/lang/String;
    const v7, 0x7f0d0036

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x2

    .line 445
    .local v2, "numberOfTiles":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f090052

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/statusbar/extcb/PluginFactory;->getQuickSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;

    move-result-object v3

    .line 449
    .local v3, "quickSettingsPlugin":Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;
    invoke-interface {v3, v1}, Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;->customizeQuickSettingsTileOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadTileSpecs() default tile list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-nez p1, :cond_2

    .line 454
    const v7, 0x7f090061

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loaded tile specs from config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v6, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 461
    .local v0, "addedDefault":Z
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v5, v8, v7

    .line 462
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v2, :cond_3

    .line 461
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 457
    .end local v0    # "addedDefault":Z
    .end local v5    # "tile":Ljava/lang/String;
    .end local v6    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "QSTileHost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loaded tile specs from setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .restart local v0    # "addedDefault":Z
    .restart local v5    # "tile":Ljava/lang/String;
    .restart local v6    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v10, "default"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 466
    if-nez v0, :cond_1

    .line 467
    const-string/jumbo v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    const/4 v0, 0x1

    goto :goto_2

    .line 471
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 474
    .end local v5    # "tile":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string/jumbo v10, "sysui_qs_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 343
    .local v0, "currentUser":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    if-eq v10, v0, :cond_5

    const/4 v1, 0x1

    .line 344
    .local v1, "isUserSwitched":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 345
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "User was swiched to user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    .line 348
    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "QSTileHost"

    const-string/jumbo v11, "Recreating tiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 350
    .local v9, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 351
    if-eqz v1, :cond_6

    .line 352
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 353
    .local v5, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Updating tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    goto :goto_1

    .line 343
    .end local v1    # "isUserSwitched":Z
    .end local v5    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    .end local v6    # "tile$iterator":Ljava/util/Iterator;
    .end local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isUserSwitched":Z
    goto/16 :goto_0

    .line 357
    .restart local v9    # "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return-void

    .line 359
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "tile$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 360
    .restart local v5    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 361
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_9

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Destroying tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_2

    .line 363
    :cond_a
    if-eqz v1, :cond_8

    .line 364
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Updating tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    goto :goto_2

    .line 368
    .end local v5    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    :cond_c
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 369
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 370
    .local v7, "tileSpec":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 371
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, v7, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 373
    :cond_e
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_f

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Creating tile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_f
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v4

    .line 376
    .local v4, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v4, :cond_10

    .line 377
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 381
    .end local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :catch_0
    move-exception v3

    .line 382
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 379
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_10
    :try_start_1
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skip creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 386
    .end local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v7    # "tileSpec":Ljava/lang/String;
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    .line 389
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 390
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v10, :cond_12

    .line 391
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 338
    :cond_12
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    .line 199
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 214
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    return-void
.end method
