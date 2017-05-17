.class Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;
.super Lcom/android/contacts/photomanager/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;,
        Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;,
        Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x1b0000

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final FADE_TRANSITION_DURATION:I = 0xc8

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1

.field private static mThumbnailSize:I


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mFavoritePhotoSize:I

.field private final mFavoritesPreloadBatch:I

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/photomanager/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mFavoritePhotoSize:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mFavoritesPreloadBatch:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .param p1, "photoIds"    # Ljava/util/Set;
    .param p2, "contactsInitials"    # Ljava/util/Map;
    .param p3, "contactsLookupKeys"    # Ljava/util/Map;
    .param p4, "uris"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data15"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    .line 417
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;-><init>(Landroid/content/Context;)V

    .line 465
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 484
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 483
    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    .line 489
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 519
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 522
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 532
    invoke-static {}, Lcom/android/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v4

    const-wide/32 v6, 0x28000000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 533
    .local v1, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v4, 0x49d80000    # 1769472.0f

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 534
    .local v0, "bitmapCacheSize":I
    new-instance v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 544
    const v4, 0x49f42400    # 2000000.0f

    mul-float/2addr v4, v1

    float-to-int v2, v4

    .line 545
    .local v2, "holderCacheSize":I
    new-instance v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;

    invoke-direct {v4, p0, v2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 555
    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 556
    sget-object v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cache adj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 563
    .local v3, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mFavoritesPreloadBatch:I

    .line 564
    const v4, 0x7f0d00dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 565
    iget v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPhotosRatio:F

    .line 564
    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mFavoritePhotoSize:I

    .line 567
    const v4, 0x7f0d00aa

    .line 566
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mThumbnailSize:I

    .line 529
    return-void

    .line 532
    .end local v0    # "bitmapCacheSize":I
    .end local v1    # "cacheSizeAdjustment":F
    .end local v2    # "holderCacheSize":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .restart local v1    # "cacheSizeAdjustment":F
    goto :goto_0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # I

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    .line 1030
    new-instance v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 1031
    if-nez p2, :cond_1

    const/4 v1, -0x1

    .line 1030
    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1035
    .local v0, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 1036
    invoke-static {v0, p4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1016
    return-void

    .line 1031
    .end local v0    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    :cond_1
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0
.end method

.method private dumpStats()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method private static inflateBitmap(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 9
    .param p0, "holder"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    .param p1, "requestedExtent"    # I

    .prologue
    .line 858
    iget v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v7, p1}, Lcom/android/contacts/common/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v5

    .line 859
    .local v5, "sampleSize":I
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 860
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_1

    .line 861
    :cond_0
    return-void

    .line 864
    :cond_1
    iget v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v5, v7, :cond_2

    .line 867
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v7, :cond_2

    .line 868
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 869
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 870
    return-void

    .line 876
    :cond_2
    :try_start_0
    invoke-static {v1, v5}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 882
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 883
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 888
    .local v6, "width":I
    if-eq v4, v6, :cond_3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mThumbnailSize:I

    mul-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_3

    .line 889
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 890
    .local v2, "dimension":I
    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 908
    .end local v2    # "dimension":I
    :cond_3
    iput v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 909
    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 910
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;Z)Z
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/photomanager/Request;
    .param p3, "fadeIn"    # Z

    .prologue
    .line 762
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 763
    :cond_0
    const/4 v9, 0x0

    return v9

    .line 765
    :cond_1
    const/4 v2, 0x0

    .line 766
    .local v2, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v4, 0x0

    .line 767
    .local v4, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getPhotoKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    check-cast v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 768
    .local v2, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isPhotoIdRequest()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    const/4 v8, 0x0

    .line 771
    .local v8, "shouldLoadGaw":Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 772
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v9, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContactFromMap(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v4

    .line 773
    .local v4, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    if-eqz v4, :cond_3

    .line 774
    new-instance v3, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 775
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v9

    .line 774
    invoke-direct {v3, v4, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 776
    .local v3, "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v9, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    check-cast v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 780
    .end local v3    # "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    .end local v4    # "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .restart local v2    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    :cond_3
    if-eqz v2, :cond_4

    iget-object v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v9, :cond_8

    .line 781
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    .line 782
    if-nez v2, :cond_7

    const/4 v9, 0x0

    :goto_1
    return v9

    .line 769
    .end local v8    # "shouldLoadGaw":Z
    .local v4, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_5
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isUriRequest()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x0

    .restart local v8    # "shouldLoadGaw":Z
    goto :goto_0

    .end local v8    # "shouldLoadGaw":Z
    :cond_6
    const/4 v8, 0x1

    .restart local v8    # "shouldLoadGaw":Z
    goto :goto_0

    .line 782
    .end local v4    # "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_7
    iget-boolean v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_1

    .line 785
    :cond_8
    iget-object v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v9, :cond_9

    const/4 v0, 0x0

    .line 786
    :goto_2
    if-nez v0, :cond_b

    .line 787
    iget-object v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v9, v9

    const/16 v10, 0x3800

    if-ge v9, v10, :cond_a

    .line 789
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v9

    invoke-static {v2, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 790
    iget-object v0, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 791
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_b

    const/4 v9, 0x0

    return v9

    .line 785
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 795
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    .line 796
    const/4 v9, 0x0

    return v9

    .line 800
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 801
    .local v6, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_f

    if-eqz v6, :cond_f

    .line 802
    const/4 v9, 0x2

    new-array v5, v9, [Landroid/graphics/drawable/Drawable;

    .line 804
    .local v5, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v9, v6, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v9, :cond_e

    move-object v7, v6

    .line 806
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .line 808
    .local v7, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 807
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v5, v10

    .line 812
    .end local v7    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 813
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isCircular()Z

    move-result v10

    .line 812
    invoke-static {v9, v0, v10}, Lcom/android/contacts/common/util/BitmapUtil;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v5, v10

    .line 814
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 815
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    const/16 v9, 0xc8

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 824
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v5    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v9

    iget-object v10, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v10}, Landroid/util/LruCache;->maxSize()I

    move-result v10

    div-int/lit8 v10, v10, 0x6

    if-ge v9, v10, :cond_d

    .line 825
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isUriRequest()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isPhotoIdRequest()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 826
    :cond_c
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getPhotoKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_d
    :goto_5
    const/4 v9, 0x0

    iput-object v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 837
    iget-boolean v9, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return v9

    .line 810
    .restart local v5    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_e
    const/4 v9, 0x0

    aput-object v6, v5, v9

    goto :goto_3

    .line 818
    .end local v5    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_f
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 819
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isCircular()Z

    move-result v10

    .line 818
    invoke-static {v9, v0, v10}, Lcom/android/contacts/common/util/BitmapUtil;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 827
    :cond_10
    iget-boolean v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v9, :cond_d

    .line 828
    new-instance v3, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 829
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v9

    .line 828
    invoke-direct {v3, v4, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 830
    .restart local v3    # "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    iget-object v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v9, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private loadDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/photomanager/Request;

    .prologue
    .line 842
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->isCircular()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 847
    .local v0, "defaultImageRequest":Lcom/android/contacts/photomanager/DefaultImageRequest;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mDefaultImageProvider:Lcom/android/contacts/photomanager/DefaultImageProvider;

    .line 848
    invoke-virtual {p2}, Lcom/android/contacts/photomanager/Request;->getContactId()J

    move-result-wide v2

    .line 847
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/contacts/photomanager/DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V

    .line 840
    return-void

    .line 845
    .end local v0    # "defaultImageRequest":Lcom/android/contacts/photomanager/DefaultImageRequest;
    :cond_0
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .restart local v0    # "defaultImageRequest":Lcom/android/contacts/photomanager/DefaultImageRequest;
    goto :goto_0
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/photomanager/Request;

    .prologue
    .line 719
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;Z)Z

    move-result v0

    .line 720
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-boolean v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private loadThumbnailByPhotoId(Landroid/widget/ImageView;JLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p5, "defaultProvider"    # Lcom/android/contacts/photomanager/DefaultImageProvider;

    .prologue
    .line 687
    const-wide v0, 0x7ffffffffffffffdL

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 688
    const v0, 0x7f0200b9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 686
    :goto_0
    return-void

    .line 690
    :cond_0
    sget-object v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadPhoto request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p4}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v0

    .line 693
    const-wide/16 v2, -0x1

    .line 692
    invoke-static {p2, p3, v0, v2, v3}, Lcom/android/contacts/photomanager/Request;->createFromThumbnailId(JZJ)Lcom/android/contacts/photomanager/Request;

    move-result-object v0

    .line 691
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/photomanager/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "contactsInitials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;>;"
    .local p3, "contactsLookupKeys":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;>;"
    .local p4, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/contacts/photomanager/Request;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 1090
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->clear()V

    .line 1091
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->clear()V

    .line 1093
    const/4 v8, 0x0

    .line 1103
    .local v8, "jpegsDecoded":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1104
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/photomanager/Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1105
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/photomanager/Request;

    .line 1106
    .local v10, "request":Lcom/android/contacts/photomanager/Request;
    const/4 v4, 0x0

    .line 1107
    .local v4, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->isUriRequest()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->isPhotoIdRequest()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1108
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getPhotoKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    check-cast v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 1114
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    iget-object v11, v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v11, :cond_5

    iget-boolean v11, v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v11, :cond_5

    .line 1115
    iget-object v11, v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v11, :cond_3

    iget-object v11, v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    .line 1117
    :cond_3
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v11

    invoke-static {v4, v11}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1118
    const/4 v8, 0x1

    .line 1115
    goto :goto_0

    .line 1109
    .restart local v4    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v11, :cond_2

    .line 1111
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v11, v10}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v6

    .line 1112
    .local v6, "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v11, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    check-cast v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .local v4, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    goto :goto_1

    .line 1120
    .end local v4    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    .end local v6    # "initials":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :cond_5
    if-eqz v4, :cond_6

    iget-boolean v11, v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v11, :cond_0

    .line 1121
    :cond_6
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->isUriRequest()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1122
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1123
    :cond_7
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->isPhotoIdRequest()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1124
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getContactPhotoId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1125
    :cond_8
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->isGalRequest()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1126
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getContactLookuoUri()Landroid/net/Uri;

    move-result-object v9

    .line 1127
    .local v9, "lookupUri":Landroid/net/Uri;
    new-instance v5, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1128
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v11, v9}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v11

    .line 1129
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v12

    .line 1127
    invoke-direct {v5, v11, v12}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 1130
    .local v5, "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1131
    .end local v5    # "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    .end local v9    # "lookupUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getContactId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 1132
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getContactId()J

    move-result-wide v2

    .line 1133
    .local v2, "contactId":J
    new-instance v5, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v11, v2, v3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v11

    .line 1135
    invoke-virtual {v10}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v12

    .line 1133
    invoke-direct {v5, v11, v12}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 1136
    .restart local v5    # "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1142
    .end local v2    # "contactId":J
    .end local v5    # "initialRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    .end local v10    # "request":Lcom/android/contacts/photomanager/Request;
    :cond_a
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1088
    :cond_b
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 986
    iget-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 987
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 988
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 989
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/photomanager/Request;

    .line 990
    .local v1, "key":Lcom/android/contacts/photomanager/Request;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;Z)Z

    move-result v2

    .line 991
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 992
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 996
    .end local v1    # "key":Lcom/android/contacts/photomanager/Request;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->softenCache()V

    .line 998
    iget-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 999
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->requestLoading()V

    .line 985
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 942
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 943
    iput-boolean v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 944
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 941
    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    const/4 v0, 0x0

    .line 576
    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 1008
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 1009
    .local v0, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1007
    .end local v0    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 753
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 751
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    .line 977
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 974
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 953
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 971
    return v1

    .line 955
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 956
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 958
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    .line 960
    :cond_0
    return v2

    .line 964
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_1

    .line 965
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->processLoadedImages()V

    .line 968
    :cond_1
    return v2

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "contactId"    # J
    .param p5, "requestedExtent"    # I
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/android/contacts/photomanager/DefaultImageProvider;

    .prologue
    .line 701
    if-nez p2, :cond_1

    .line 703
    invoke-virtual {p7, p1, p6, p3, p4}, Lcom/android/contacts/photomanager/DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V

    .line 704
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p6}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v0

    invoke-static {v0, p3, p4, p5}, Lcom/android/contacts/photomanager/Request;->createFromContactId(ZJI)Lcom/android/contacts/photomanager/Request;

    move-result-object v0

    .line 705
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    .line 700
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p6}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v0

    .line 713
    invoke-static {p2, p5, v0, p3, p4}, Lcom/android/contacts/photomanager/Request;->createFromUri(Landroid/net/Uri;IZJ)Lcom/android/contacts/photomanager/Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "contactId"    # J
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/android/contacts/photomanager/DefaultImageProvider;

    .prologue
    .line 642
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 644
    invoke-virtual {p7, p1, p6, p4, p5}, Lcom/android/contacts/photomanager/DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;J)V

    .line 645
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p6}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v0

    .line 648
    const/4 v1, 0x0

    .line 646
    invoke-static {v0, p4, p5, v1}, Lcom/android/contacts/photomanager/Request;->createFromContactId(ZJI)Lcom/android/contacts/photomanager/Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    .line 641
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p6

    move-object v5, p7

    .line 653
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadThumbnailByPhotoId(Landroid/widget/ImageView;JLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JLandroid/net/Uri;Lcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "lookupUri"    # Landroid/net/Uri;
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/photomanager/DefaultImageRequest;
    .param p6, "defaultProvider"    # Lcom/android/contacts/photomanager/DefaultImageProvider;

    .prologue
    .line 660
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 662
    invoke-virtual {p6, p1, p5, p4}, Lcom/android/contacts/photomanager/DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/DefaultImageRequest;Landroid/net/Uri;)V

    .line 663
    iget-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p5}, Lcom/android/contacts/photomanager/DefaultImageRequest;->isCircular()Z

    move-result v0

    .line 666
    const/4 v1, 0x0

    .line 664
    invoke-static {v0, p4, v1}, Lcom/android/contacts/photomanager/Request;->createFromContactLookupKey(ZLandroid/net/Uri;I)Lcom/android/contacts/photomanager/Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/photomanager/Request;)V

    .line 659
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 671
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->loadThumbnailByPhotoId(Landroid/widget/ImageView;JLcom/android/contacts/photomanager/DefaultImageRequest;Lcom/android/contacts/photomanager/DefaultImageProvider;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 626
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 629
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->clearCache()V

    .line 624
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPaused:Z

    .line 922
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 636
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 634
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 739
    iget-boolean v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_0

    .line 741
    return-void

    .line 744
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 745
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;

    .line 746
    .local v0, "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 738
    .end local v0    # "holder":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$BitmapHolder;
    :cond_1
    return-void
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPaused:Z

    .line 930
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->requestLoading()V

    .line 927
    :cond_0
    return-void
.end method
