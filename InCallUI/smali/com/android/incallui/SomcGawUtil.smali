.class public Lcom/android/incallui/SomcGawUtil;
.super Ljava/lang/Object;
.source "SomcGawUtil.java"


# static fields
.field private static sInstance:Lcom/android/incallui/SomcGawUtil;


# instance fields
.field private final mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

.field private final mGawContactsCacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

.field private final mImageHeight:I

.field private final mImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 38
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGawContactsCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 96
    .local v14, "beginTime":J
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/SomcGawUtil;->mImageWidth:I

    .line 97
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/SomcGawUtil;->mImageHeight:I

    .line 99
    new-instance v2, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-direct {v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/SomcGawUtil;->mImageWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/SomcGawUtil;->mImageHeight:I

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->initLibrary(Landroid/content/Context;IIIIIIII)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    .line 102
    sget-object v3, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    .line 101
    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;

    .line 103
    .local v12, "backgroundLayer":Lcom/sonymobile/generativeartwork/layers/BackgroundLayer;
    if-nez v12, :cond_0

    .line 104
    const-string/jumbo v2, "SomcGawUtil"

    const-string/jumbo v3, "init: GAW Failed to create background layer."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    sget-object v3, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->addLayer(Lcom/sonymobile/generativeartwork/layers/LayerType;)Lcom/sonymobile/generativeartwork/layers/GenerativeLayer;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    if-nez v2, :cond_1

    .line 108
    const-string/jumbo v2, "SomcGawUtil"

    const-string/jumbo v3, "init: GAW Failed to create artistic layer."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    if-eqz v2, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-virtual {v2, v12}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->registerColorChangeListener(Lcom/sonymobile/generativeartwork/layers/ColorChangeListener;)V

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    new-instance v3, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/sonymobile/generativeartwork/settings/CirclePatterSetupW17_2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->setSettings(Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 116
    .local v16, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GAW initializing time (msec): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v16, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static checkPow2(I)Z
    .locals 2
    .param p0, "num"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    if-gez p0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    return v1
.end method

.method private static getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p0, p1}, Lcom/android/incallui/SomcGawUtil;->getSymbols(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/SomcGawUtil;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x400

    const-class v4, Lcom/android/incallui/SomcGawUtil;

    monitor-enter v4

    .line 77
    :try_start_0
    sget-object v3, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;

    if-nez v3, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0800d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 80
    .local v2, "width":I
    const v3, 0x7f0800d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 82
    .local v0, "height":I
    invoke-static {v2}, Lcom/android/incallui/SomcGawUtil;->checkPow2(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/incallui/SomcGawUtil;->checkPow2(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-le v2, v5, :cond_2

    .line 84
    :cond_0
    new-instance v3, Lcom/android/incallui/SomcGawUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x400

    .line 85
    const/16 v7, 0x400

    .line 84
    invoke-direct {v3, v5, v6, v7}, Lcom/android/incallui/SomcGawUtil;-><init>(Landroid/content/Context;II)V

    sput-object v3, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;

    .line 91
    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 83
    .restart local v0    # "height":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "width":I
    :cond_2
    if-gt v0, v5, :cond_0

    .line 87
    :try_start_1
    new-instance v3, Lcom/android/incallui/SomcGawUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2, v0}, Lcom/android/incallui/SomcGawUtil;-><init>(Landroid/content/Context;II)V

    sput-object v3, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getSymbols(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, "number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    .end local v2    # "number":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v2, v1}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v3

    return-object v3

    .line 186
    .local v0, "displayName":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .local v0, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 191
    :cond_1
    move-object v2, p1

    .local v2, "number":Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized initializeAsync(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/incallui/SomcGawUtil;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/incallui/SomcGawUtil;->sInstance:Lcom/android/incallui/SomcGawUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 59
    return-void

    .line 61
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/incallui/SomcGawUtil$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/SomcGawUtil$1;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    .line 68
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 61
    invoke-virtual {v2, v3}, Lcom/android/incallui/SomcGawUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 57
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 128
    iget-object v8, p0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    if-nez v8, :cond_0

    .line 129
    const-string/jumbo v8, "SomcGawUtil"

    const-string/jumbo v9, "getBitmap: GAW artistic layer is null."

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v10

    .line 132
    :cond_0
    const/4 v4, 0x0

    .line 133
    .local v4, "gawBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/android/incallui/SomcGawUtil;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/incallui/SomcGawUtil;->mGawContactsCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 135
    .local v7, "weakBitmap":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 136
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    .local v0, "beginTime":J
    iget v8, p0, Lcom/android/incallui/SomcGawUtil;->mImageWidth:I

    iget v9, p0, Lcom/android/incallui/SomcGawUtil;->mImageHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    .local v4, "gawBitmap":Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/android/incallui/SomcGawUtil;->getSymbols(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v5

    .line 139
    .local v5, "gawLetters":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    iget-object v8, p0, Lcom/android/incallui/SomcGawUtil;->mArtisticLayer:Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-virtual {v8, v5}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setLetters(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)V

    .line 140
    iget-object v8, p0, Lcom/android/incallui/SomcGawUtil;->mGenerativeArtWork:Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-virtual {v8, v4}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->render(Landroid/graphics/Bitmap;)V

    .line 141
    iget-object v8, p0, Lcom/android/incallui/SomcGawUtil;->mGawContactsCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 143
    .local v2, "endTime":J
    sget-boolean v8, Lcom/android/incallui/Log;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 144
    const-string/jumbo v8, "SomcGawUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getBitmap, render: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", symbols="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    iget-object v10, v5, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    const-string/jumbo v8, "SomcGawUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GAW rendering time (msec): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v0    # "beginTime":J
    .end local v2    # "endTime":J
    .end local v5    # "gawLetters":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :goto_0
    return-object v4

    .line 149
    .local v4, "gawBitmap":Landroid/graphics/Bitmap;
    :cond_3
    sget-boolean v8, Lcom/android/incallui/Log;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 150
    const-string/jumbo v8, "SomcGawUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getBitmap, cached: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "gawBitmap":Landroid/graphics/Bitmap;
    check-cast v4, Landroid/graphics/Bitmap;

    .local v4, "gawBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
