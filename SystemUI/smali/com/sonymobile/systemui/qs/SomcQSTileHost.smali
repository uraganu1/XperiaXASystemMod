.class public Lcom/sonymobile/systemui/qs/SomcQSTileHost;
.super Lcom/android/systemui/statusbar/phone/QSTileHost;
.source "SomcQSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;,
        Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    }
.end annotation


# static fields
.field public static final ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;


# instance fields
.field private mQuickSettingsTilesDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    const/16 v0, 0x10

    new-array v14, v0, [Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    .line 303
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "airplane"

    const v2, 0x7f0c001e

    .line 304
    const v3, 0x7f020285

    .line 305
    const v4, 0x7f0902d7

    .line 303
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v6

    .line 306
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "dnd"

    const v2, 0x7f0c001f

    const v3, 0x7f020286

    .line 307
    const v4, 0x7f09015e

    .line 306
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    aput-object v0, v14, v5

    .line 308
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "rotation"

    const v2, 0x7f0c0020

    .line 309
    const v3, 0x7f020287

    .line 310
    const v4, 0x7f090167

    .line 308
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v1, 0x2

    aput-object v0, v14, v1

    .line 311
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "flashlight"

    const v2, 0x7f0c0021

    .line 312
    const v3, 0x7f020284

    .line 313
    const v4, 0x7f09018b

    .line 311
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v1, 0x3

    aput-object v0, v14, v1

    .line 314
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "location"

    const v2, 0x7f0c0022

    .line 315
    const v3, 0x7f020283

    .line 316
    const v4, 0x7f09016c

    .line 314
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v1, 0x4

    aput-object v0, v14, v1

    .line 317
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "cast"

    const v2, 0x7f0c0023

    const v3, 0x7f020288

    .line 318
    const v4, 0x7f09017b

    .line 317
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v1, 0x5

    aput-object v0, v14, v1

    .line 319
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "sync"

    const v2, 0x7f0c0024

    const v3, 0x7f020063

    .line 320
    const v4, 0x7f09006d

    .line 319
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v1, 0x6

    aput-object v0, v14, v1

    .line 321
    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v8, "roaming"

    const v9, 0x7f0c0025

    const v10, 0x7f020094

    .line 322
    const v11, 0x7f090075

    move v12, v5

    move v13, v5

    .line 321
    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/4 v0, 0x7

    aput-object v7, v14, v0

    .line 323
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "nfc"

    const v2, 0x7f0c0026

    const v3, 0x7f020088

    .line 324
    const v4, 0x7f09006f

    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v1, 0x8

    aput-object v0, v14, v1

    .line 325
    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v8, "lte"

    const v9, 0x7f0c002d

    const v10, 0x7f02007e

    .line 326
    const v11, 0x7f090070

    move v12, v5

    move v13, v5

    .line 325
    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v0, 0x9

    aput-object v7, v14, v0

    .line 327
    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v8, "datatraffic"

    const v9, 0x7f0c0027

    .line 328
    const v10, 0x7f020075

    const v11, 0x7f09006e

    move v12, v5

    move v13, v5

    .line 327
    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v0, 0xa

    aput-object v7, v14, v0

    .line 330
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "stamina"

    const v2, 0x7f0c0028

    const v3, 0x7f020006

    .line 331
    const v4, 0x7f090071

    .line 330
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v1, 0xb

    aput-object v0, v14, v1

    .line 332
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "screenmirroring"

    const v2, 0x7f0c0029

    .line 333
    const v3, 0x7f020096

    .line 334
    const v4, 0x7f090072

    .line 332
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v1, 0xc

    aput-object v0, v14, v1

    .line 335
    new-instance v7, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v8, "tethering"

    const v9, 0x7f0c002a

    const v10, 0x7f02007c

    .line 336
    const v11, 0x7f090189

    move v12, v5

    move v13, v5

    .line 335
    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v0, 0xd

    aput-object v7, v14, v0

    .line 337
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "throw"

    const v2, 0x7f0c002b

    const v3, 0x7f0200bd

    .line 338
    const v4, 0x7f090073

    .line 337
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v1, 0xe

    aput-object v0, v14, v1

    .line 339
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const-string/jumbo v1, "volte"

    const v2, 0x7f0c002c

    const v3, 0x7f0200bf

    .line 340
    const v4, 0x7f090074

    move v6, v5

    .line 339
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;-><init>(Ljava/lang/String;IIIZZ)V

    const/16 v1, 0xf

    aput-object v0, v14, v1

    .line 301
    sput-object v14, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/mediatek/systemui/statusbar/policy/HotKnotController;Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;)V
    .locals 0
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
    .line 92
    invoke-direct/range {p0 .. p23}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/sonymobile/systemui/statusbar/policy/NFCController;Lcom/sonymobile/systemui/statusbar/policy/LTEController;Lcom/sonymobile/systemui/statusbar/policy/StaminaController;Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController;Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController;Lcom/sonymobile/systemui/statusbar/policy/TetheringController;Lcom/sonymobile/systemui/statusbar/policy/ThrowController;Lcom/sonymobile/systemui/statusbar/policy/VolteController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/mediatek/systemui/statusbar/policy/HotKnotController;Lcom/mediatek/systemui/statusbar/policy/AudioProfileController;)V

    .line 90
    return-void
.end method

.method private static final createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllers"    # Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    .param p2, "tile"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v4, Lcom/android/systemui/qs/QSTileView;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 375
    .local v4, "tileView":Lcom/android/systemui/qs/QSTileView;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 377
    .local v2, "secondaryUser":Z
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    .line 378
    .local v3, "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    sget-object v6, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v0, v6, v5

    .line 379
    .local v0, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v8, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 380
    iget v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 384
    :cond_0
    iget-boolean v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 386
    return-object v9

    .line 375
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v2    # "secondaryUser":Z
    .end local v3    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "secondaryUser":Z
    goto :goto_0

    .line 383
    .restart local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v3    # "state":Lcom/android/systemui/qs/QSTile$BooleanState;
    :cond_2
    return-object v9

    .line 387
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    return-object v9

    .line 389
    :cond_4
    iget v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->iconId:I

    invoke-static {v5}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 390
    iget v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->labelId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 391
    iget-object v5, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    .line 392
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 393
    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 394
    return-object v4

    .line 378
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_6
    return-object v9
.end method

.method public static final getEditTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTileView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTileView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/QSTileView;>;"
    .local p2, "unused":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/QSTileView;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sysui_qs_tiles"

    .line 147
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 146
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "tileList":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 151
    const v10, 0x7f090061

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 152
    const-string/jumbo v10, "default"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 154
    const v10, 0x7f090060

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    :cond_0
    new-instance v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "controllers":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v5, "tileArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 164
    .local v9, "usedTilesCounter":I
    const/4 v8, 0x0

    .line 166
    .local v8, "unusedTilesCounter":I
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v4, v11, v10

    .line 167
    .local v4, "tile":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 166
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    invoke-static {v0, v1, v4}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v7

    .line 171
    .local v7, "tileView":Lcom/android/systemui/qs/QSTileView;
    if-eqz v7, :cond_1

    .line 172
    new-instance v13, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v14, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->USED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    invoke-direct {v13, v14, v9, v4}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V

    invoke-virtual {v7, v13}, Lcom/android/systemui/qs/QSTileView;->setTag(Ljava/lang/Object;)V

    .line 173
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 179
    .end local v4    # "tile":Ljava/lang/String;
    .end local v7    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_3
    sget-object v11, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_2
    if-ge v10, v12, :cond_5

    aget-object v2, v11, v10

    .line 181
    .local v2, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v13, v2, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 182
    iget-object v13, v2, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v13}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->createTileView(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v7

    .line 183
    .restart local v7    # "tileView":Lcom/android/systemui/qs/QSTileView;
    if-eqz v7, :cond_4

    .line 184
    new-instance v13, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    sget-object v14, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;->UNUSED:Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;

    .line 185
    iget-object v15, v2, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    .line 184
    invoke-direct {v13, v14, v8, v15}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;-><init>(Lcom/sonymobile/systemui/qs/QSTileViewIdentifier$Status;ILjava/lang/String;)V

    invoke-virtual {v7, v13}, Lcom/android/systemui/qs/QSTileView;->setTag(Ljava/lang/Object;)V

    .line 186
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v8, v8, 0x1

    .line 179
    .end local v7    # "tileView":Lcom/android/systemui/qs/QSTileView;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 143
    .end local v2    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_5
    return-void
.end method

.method public static final getMaxTiles(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getTileIcon(Ljava/lang/String;)I
    .locals 6
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 231
    sget-object v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 232
    .local v0, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    iget v1, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->iconId:I

    return v1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_1
    return v2
.end method

.method public static getTileLabel(Ljava/lang/String;)I
    .locals 6
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    sget-object v3, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 223
    .local v0, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v5, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    iget v1, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->labelId:I

    return v1

    .line 222
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_1
    return v2
.end method

.method private static isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controllers"    # Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    .param p2, "tile"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    const-string/jumbo v2, "tethering"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    return v0

    .line 348
    :cond_0
    const-string/jumbo v2, "bt"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 350
    :cond_2
    const-string/jumbo v2, "roaming"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "datatraffic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    :cond_3
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0

    .line 353
    :cond_4
    const-string/jumbo v2, "flashlight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    iget-object v0, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 355
    const-string/jumbo v1, "android.hardware.camera.flash"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 356
    :cond_5
    const-string/jumbo v2, "lte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 357
    iget-object v2, p1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLteNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 357
    if-eqz v2, :cond_6

    .line 360
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v0, :cond_6

    move v1, v0

    .line 357
    :cond_6
    return v1

    .line 361
    :cond_7
    const-string/jumbo v2, "stamina"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 362
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 363
    :cond_8
    const-string/jumbo v2, "throw"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 364
    return v1

    .line 365
    :cond_9
    return v0
.end method

.method public static final setTiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "selected":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 203
    const v4, 0x7f090068

    .line 202
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "selectedList":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;

    .line 206
    .local v1, "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "qsid":Lcom/sonymobile/systemui/qs/QSTileViewIdentifier;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sysui_qs_tiles"

    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 213
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 201
    return-void
.end method


# virtual methods
.method protected createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 9
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
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "controllers":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 110
    .local v3, "secondaryUser":Z
    :goto_0
    sget-object v5, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v1, v5, v4

    .line 111
    .local v1, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v7, v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    if-eqz v7, :cond_0

    .line 112
    iget v7, v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->configQsEnabledId:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    :cond_0
    iget-object v7, v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v7, v1, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    if-eqz v7, :cond_3

    .line 115
    return-object v8

    .line 107
    .end local v1    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v3    # "secondaryUser":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "secondaryUser":Z
    goto :goto_0

    .line 113
    .restart local v1    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_2
    return-object v8

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0, p1}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->isTileSupported(Landroid/content/Context;Lcom/sonymobile/systemui/qs/SomcQSTileHost$Controllers;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    return-object v8

    .line 110
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    :cond_5
    const-string/jumbo v4, "sync"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/AutoSyncTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/AutoSyncTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 120
    :cond_6
    const-string/jumbo v4, "roaming"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 121
    :cond_7
    const-string/jumbo v4, "nfc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/NFCTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/NFCTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 122
    :cond_8
    const-string/jumbo v4, "lte"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/LTETile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 123
    :cond_9
    const-string/jumbo v4, "datatraffic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 124
    :cond_a
    const-string/jumbo v4, "stamina"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 125
    :cond_b
    const-string/jumbo v4, "screenmirroring"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 126
    :cond_c
    const-string/jumbo v4, "throw"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 127
    :cond_d
    const-string/jumbo v4, "volte"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/VolteTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/VolteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 128
    :cond_e
    const-string/jumbo v4, "tethering"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-direct {v4, p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v4

    .line 132
    :cond_f
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v4

    return-object v4
.end method

.method protected loadTileSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 12
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
    const/4 v8, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    .local v1, "res":Landroid/content/res/Resources;
    const v7, 0x7f090060

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mQuickSettingsTilesDefault:Ljava/lang/String;

    .line 243
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 244
    .local v5, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 245
    .local v2, "secondaryUser":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    .local v6, "tileSpecsForSecondaryUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "tileSpec":Ljava/lang/String;
    sget-object v9, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->ALL_TILES:[Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;

    array-length v10, v9

    move v7, v8

    :goto_2
    if-ge v7, v10, :cond_0

    aget-object v0, v9, v7

    .line 249
    .local v0, "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    iget-object v11, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->name:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 250
    iget-boolean v7, v0, Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;->ownerOnly:Z

    if-eqz v7, :cond_0

    .line 251
    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v2    # "secondaryUser":Z
    .end local v3    # "tileSpec":Ljava/lang/String;
    .end local v4    # "tileSpec$iterator":Ljava/util/Iterator;
    .end local v6    # "tileSpecsForSecondaryUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "secondaryUser":Z
    goto :goto_0

    .line 248
    .restart local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .restart local v3    # "tileSpec":Ljava/lang/String;
    .restart local v4    # "tileSpec$iterator":Ljava/util/Iterator;
    .restart local v6    # "tileSpecsForSecondaryUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 257
    .end local v0    # "qs":Lcom/sonymobile/systemui/qs/SomcQSTileHost$Qs;
    .end local v3    # "tileSpec":Ljava/lang/String;
    :cond_3
    return-object v6

    .line 259
    .end local v4    # "tileSpec$iterator":Ljava/util/Iterator;
    .end local v6    # "tileSpecsForSecondaryUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v5
.end method

.method public onConfigurationChanged()V
    .locals 6

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 264
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f090060

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "defaultTileList":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->mQuickSettingsTilesDefault:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 267
    const-string/jumbo v4, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 266
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/systemui/qs/SomcQSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
