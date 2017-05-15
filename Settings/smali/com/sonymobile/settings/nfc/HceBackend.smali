.class public Lcom/sonymobile/settings/nfc/HceBackend;
.super Ljava/lang/Object;
.source "HceBackend.java"


# static fields
.field private static final SE_SIM_ENABLE:Z

.field private static final SE_SMX_ENABLE:Z


# instance fields
.field private mBannerForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

.field private mChangedDefaultService:Landroid/content/ComponentName;

.field private mCheckBoxForService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultRoute:I

.field private mDisabledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mOffHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const-string/jumbo v0, "ro.nfc.se.sim.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    .line 89
    const-string/jumbo v0, "ro.nfc.se.smx.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    sput-boolean v0, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    .line 103
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    .line 106
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    .line 108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 113
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 116
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    .line 118
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->initialize()V

    .line 112
    return-void
.end method

.method private createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v12, v14, Landroid/util/DisplayMetrics;->density:F

    .line 436
    .local v12, "scale":F
    const/high16 v14, 0x42c00000    # 96.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v1, v14

    .line 437
    .local v1, "bannerHeight":I
    const/high16 v14, 0x43820000    # 260.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v2, v14

    .line 438
    .local v2, "bannerWidth":I
    const/high16 v14, 0x41600000    # 14.0f

    mul-float/2addr v14, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 440
    .local v13, "textSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "description":Ljava/lang/String;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 444
    .local v5, "bmp":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 446
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v10, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 447
    .local v10, "paint":Landroid/graphics/Paint;
    int-to-float v14, v13

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 449
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 451
    .local v8, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    const/4 v3, 0x0

    .line 452
    .local v3, "baseX":F
    int-to-float v14, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 453
    iget v15, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v16, v0

    add-float v15, v15, v16

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v16, v0

    add-float v15, v15, v16

    int-to-float v0, v13

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    .line 452
    sub-float v4, v14, v15

    .line 455
    .local v4, "baseY":F
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14, v3, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v10}, Lcom/sonymobile/settings/nfc/HceBackend;->clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v14

    .line 458
    int-to-float v15, v13

    add-float/2addr v15, v4

    iget v0, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v16, v0

    add-float v15, v15, v16

    .line 457
    invoke-virtual {v6, v14, v3, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 461
    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 463
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 464
    .local v11, "path":Landroid/graphics/Path;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    const/4 v14, 0x0

    int-to-float v15, v1

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    int-to-float v14, v2

    int-to-float v15, v1

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    int-to-float v14, v2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 468
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 469
    invoke-virtual {v6, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 471
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v14
.end method

.method private static cutPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    return-object p0
.end method

.method private getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 420
    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v5, p2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 421
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v4, :cond_0

    return-object v6

    .line 422
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 423
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 425
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 431
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_3
    return-object v6
.end method

.method private static getAidsLength(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 508
    .local v3, "length":I
    if-eqz p0, :cond_1

    .line 509
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 511
    .local v2, "bytes":[B
    if-eqz v2, :cond_0

    .line 512
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    goto :goto_0

    .line 516
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "bytes":[B
    :cond_1
    return v3
.end method

.method private getConfigBoolean(Ljava/lang/String;)Z
    .locals 7
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 334
    .local v3, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.android.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 335
    .local v2, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "com.android.nfc"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 342
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 339
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "HceBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resources error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "HceBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageManager error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 320
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.android.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 321
    .local v2, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "string"

    const-string/jumbo v5, "com.android.nfc"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 328
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 325
    .restart local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "HceBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resources error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "HceBackend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageManager error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPaymentApp()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 403
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v5, "payment"

    invoke-virtual {v4, v5}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 404
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v3, :cond_0

    return-object v6

    .line 406
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 407
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 408
    .local v0, "service":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v5, "payment"

    invoke-virtual {v4, v0, v5}, Landroid/nfc/cardemulation/CardEmulation;->isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    return-object v0

    .line 412
    .end local v0    # "service":Landroid/content/ComponentName;
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    return-object v6
.end method

.method private getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    .line 212
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 213
    :cond_0
    return-object v0
.end method

.method private getDefaultRouteFromSettings()I
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "nfc_default_route"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "defaultRoute":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 313
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private getDisabledServices()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 360
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 362
    .local v6, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v10, "other"

    invoke-virtual {v9, v10}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 363
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v7, :cond_0

    return-object v2

    .line 365
    :cond_0
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 366
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    iget-object v9, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "nfc_disabled_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 383
    :cond_2
    return-object v2

    .line 371
    :cond_3
    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v1, v10, v9

    .line 373
    .local v1, "hash":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 374
    .local v3, "service":Landroid/content/ComponentName;
    if-eqz v3, :cond_4

    .line 375
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3    # "service":Landroid/content/ComponentName;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "HceBackend"

    const-string/jumbo v13, "Failed to parse DisabledServices\' hash"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDisabledServicesFromSetting()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    :cond_1
    return-object v2
.end method

.method private getSumRatioForAids(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 536
    .local v1, "sizeRatio":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v3}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 537
    .local v0, "entriesRatio":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x10

    .line 520
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v4

    .line 521
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 522
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 524
    add-int/lit8 v2, v2, 0x1

    .line 526
    :cond_2
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 527
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 528
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 529
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 528
    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 527
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 531
    :cond_3
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteFromSettings()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    .line 298
    const-string/jumbo v1, "ce_subsystem_builder"

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/nfc/HceBackend;->getConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "ceSubsystemBuilder":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.nfc.cardemulation.NxpCeSubsystemBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    new-instance v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;

    iget v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorNxp;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    .line 305
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 295
    return-void

    .line 302
    :cond_1
    new-instance v1, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;

    iget v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-direct {v1, v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulatorSony;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    goto :goto_0
.end method

.method private isDynamicSwitchSupported()Z
    .locals 1

    .prologue
    .line 541
    const-string/jumbo v0, "support_dynamic_route_switch"

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/nfc/HceBackend;->getConfigBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isEnabledService(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeServices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez p1, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 350
    .local v0, "service":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 354
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v0    # "service":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method private setDisabledServices(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v5, 0x0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 396
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "nfc_disabled_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 390
    .local v1, "service":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    .end local v1    # "service":Landroid/content/ComponentName;
    .end local v2    # "service$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "nfc_disabled_services"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public applyCurrentSettings()V
    .locals 6

    .prologue
    .line 263
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->setDisabledServices(Ljava/util/Set;)V

    .line 274
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 275
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.nfc.action.UPDATE_ROUTING_TABLE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    return-void

    .line 276
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 279
    return-void
.end method

.method public applyNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.sonymobile.nfc.extra.OVERFLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 124
    const-string/jumbo v0, "com.sonymobile.nfc.extra.DEFAULT_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mChangedDefaultService:Landroid/content/ComponentName;

    .line 121
    :cond_0
    return-void
.end method

.method clipTextToBanner(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 475
    if-nez p1, :cond_1

    .line 476
    const-string/jumbo v0, ""

    return-object v0

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 478
    :cond_1
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 483
    :cond_2
    return-object p1
.end method

.method public getBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckBoxState(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return v2
.end method

.method public getDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    return-object v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    return-object v0
.end method

.method public getNonDefaultRouteServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    return-object v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentRatio()F
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 233
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v4

    .line 234
    .local v4, "defaultPayment":Landroid/content/ComponentName;
    if-nez v4, :cond_0

    return v10

    .line 236
    :cond_0
    const-string/jumbo v9, "payment"

    invoke-direct {p0, v4, v9}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 237
    .local v6, "paymentAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_1

    return v10

    .line 239
    :cond_1
    iget-object v9, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v9}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v7

    .line 240
    .local v7, "routedAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 242
    .local v3, "cuttedAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->cutPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "cuttedAid":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 245
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "cuttedAid":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getAidsLength(Ljava/util/List;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidLength()I

    move-result v10

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 250
    .local v8, "sizeRatio":F
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v10}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getMaxAidEntries()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 251
    .local v5, "entriesRatio":F
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    return v9
.end method

.method public getSumRatio()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 217
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getRoutedAids()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getSumRatioForAids(Ljava/util/List;)F

    move-result v0

    .line 218
    .local v0, "defaultRouteRatio":F
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->isDynamicSwitchSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    return v0

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    invoke-virtual {v2}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->getOtherRoutedAids()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/nfc/HceBackend;->getSumRatioForAids(Ljava/util/List;)F

    move-result v1

    .line 223
    .local v1, "otherRouteRatio":F
    cmpg-float v2, v0, v3

    if-gtz v2, :cond_1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1

    .line 225
    return v0

    .line 228
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method public setCheckBoxState(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "checked"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public setDefaultPaymentApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v1, "payment"

    invoke-virtual {v0, p1, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 415
    return-void
.end method

.method public showSelectServiceMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SIM_ENABLE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sonymobile/settings/nfc/HceBackend;->SE_SMX_ENABLE:Z

    if-eqz v2, :cond_2

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v3, "other"

    invoke-virtual {v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    return v1

    .line 131
    .end local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_2
    return v1

    .line 135
    .restart local v0    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateDefaultRoute()V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultRouteFromSettings()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    .line 292
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    iget v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDefaultRoute:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->updateDefaultRoute(I)V

    .line 290
    return-void
.end method

.method public updateServices()V
    .locals 10

    .prologue
    .line 139
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v9, "other"

    invoke-virtual {v8, v9}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 140
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v6, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServices()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mDisabledServices:Ljava/util/List;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "currentComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 146
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 147
    .local v2, "service":Landroid/content/ComponentName;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 149
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/sonymobile/settings/nfc/HceBackend;->isEnabledService(Landroid/content/ComponentName;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;->createBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mBannerForService:Ljava/util/Map;

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v2    # "service":Landroid/content/ComponentName;
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mHostServices:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 165
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mOffHostServices:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 168
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 169
    .local v7, "uninstalledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCheckBoxForService:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "service$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 170
    .restart local v2    # "service":Landroid/content/ComponentName;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 171
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_6
    invoke-direct {p0, v7}, Lcom/sonymobile/settings/nfc/HceBackend;->removeServices(Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public updateSimulator()V
    .locals 6

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v2, "payment"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mCardEmulation:Landroid/nfc/cardemulation/CardEmulation;

    const-string/jumbo v2, "other"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceBackend;->mSimulator:Lcom/sonymobile/settings/nfc/AidRoutingSimulator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDisabledServicesFromSetting()Ljava/util/List;

    move-result-object v3

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceBackend;->getDefaultPaymentServiceFromSetting()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    .line 195
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/settings/nfc/AidRoutingSimulator;->startRouting(Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 190
    return-void
.end method
