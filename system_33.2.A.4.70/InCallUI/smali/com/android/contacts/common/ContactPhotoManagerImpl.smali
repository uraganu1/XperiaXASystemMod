.class Lcom/android/contacts/common/ContactPhotoManagerImpl;
.super Lcom/android/contacts/common/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    }
.end annotation


# static fields
.field private static final BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

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
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "photoIds"    # Ljava/util/Set;
    .param p2, "photoIdsAsStrings"    # Ljava/util/Set;
    .param p3, "uris"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 627
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data15"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    .line 636
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-array v1, v3, [B

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 637
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 608
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager;-><init>()V

    .line 671
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 690
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 689
    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 695
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 723
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 726
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 734
    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 737
    const-string/jumbo v4, "activity"

    .line 736
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 739
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 741
    .local v2, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v4, 0x49d80000    # 1769472.0f

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 742
    .local v1, "bitmapCacheSize":I
    new-instance v4, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 752
    const v4, 0x49f42400    # 2000000.0f

    mul-float/2addr v4, v2

    float-to-int v3, v4

    .line 753
    .local v3, "holderCacheSize":I
    new-instance v4, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;

    invoke-direct {v4, p0, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 763
    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 764
    const-string/jumbo v4, "ContactPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cache adj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 771
    const v5, 0x7f08008a

    .line 770
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    .line 774
    invoke-static {p1}, Lcom/android/contacts/commonbind/util/UserAgentGenerator;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 775
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 776
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 733
    :cond_0
    return-void

    .line 739
    .end local v1    # "bitmapCacheSize":I
    .end local v2    # "cacheSizeAdjustment":F
    .end local v3    # "holderCacheSize":I
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "cacheSizeAdjustment":F
    goto :goto_0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    .line 1239
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1240
    if-nez p2, :cond_2

    const/4 v1, -0x1

    .line 1239
    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1244
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 1245
    invoke-static {v0, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1248
    :cond_0
    if-eqz p2, :cond_3

    .line 1249
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 1251
    const-string/jumbo v1, "ContactPhotoManager"

    const-string/jumbo v2, "Bitmap too big to fit in cache."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    sget-object v2, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1225
    return-void

    .line 1240
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_2
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0

    .line 1255
    .restart local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    sget-object v2, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 885
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    .line 886
    .local v0, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iput-boolean p5, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 887
    invoke-virtual {p6, p1, p3, p4, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 884
    return-void
.end method

.method private getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "request"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .prologue
    .line 1031
    invoke-static {p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 1034
    .local v0, "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 1035
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 1036
    return-object v0

    .line 1038
    .end local v0    # "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 9
    .param p0, "holder"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .param p1, "requestedExtent"    # I

    .prologue
    .line 1049
    iget v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v7, p1}, Lcom/android/contacts/common/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v5

    .line 1050
    .local v5, "sampleSize":I
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 1051
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_1

    .line 1052
    :cond_0
    return-void

    .line 1055
    :cond_1
    iget v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v5, v7, :cond_2

    .line 1058
    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v7, :cond_2

    .line 1059
    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1060
    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 1061
    return-void

    .line 1067
    :cond_2
    :try_start_0
    invoke-static {v1, v5}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1073
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1074
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1079
    .local v6, "width":I
    if-eq v4, v6, :cond_3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget v8, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    mul-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_3

    .line 1080
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1081
    .local v2, "dimension":I
    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1099
    .end local v2    # "dimension":I
    :cond_3
    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 1100
    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1101
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v3

    .line 1108
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "ContactPhotoManager"

    const-string/jumbo v8, "[inflateBitmap]cached OutOfMemoryError"

    invoke-static {v7, v8, v3}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .param p3, "fadeIn"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 958
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 959
    .local v2, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_0

    .line 961
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 962
    return v9

    .line 965
    :cond_0
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    .line 966
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 967
    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return v6

    .line 970
    :cond_1
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    const/4 v0, 0x0

    .line 971
    :goto_0
    if-nez v0, :cond_3

    .line 987
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 988
    const-string/jumbo v6, "ContactPhotoManager"

    const-string/jumbo v7, "[loadCachedPhoto]cachedBitmap == null"

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return v9

    .line 970
    :cond_2
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 993
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 994
    .local v4, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_6

    if-eqz v4, :cond_6

    .line 995
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 997
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 999
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 1001
    .local v5, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 1000
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v9

    .line 1005
    .end local v5    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6, v0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    .line 1006
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1007
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1016
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    if-ge v6, v7, :cond_4

    .line 1017
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_4
    iput-object v8, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1023
    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return v6

    .line 1003
    .restart local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_5
    aput-object v4, v3, v9

    goto :goto_1

    .line 1011
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6, v0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1010
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .prologue
    .line 891
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    .line 892
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 893
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "photoIdsAsStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1282
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1283
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1285
    const/4 v2, 0x0

    .line 1295
    .local v2, "jpegsDecoded":Z
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1296
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1298
    .local v3, "request":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1299
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    sget-object v4, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v0, v4, :cond_0

    .line 1302
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    .line 1303
    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1305
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1306
    const/4 v2, 0x1

    .line 1303
    goto :goto_0

    .line 1308
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_3

    .line 1317
    const-string/jumbo v4, "ContactPhotoManager"

    const-string/jumbo v5, "[obtainPhotoIdsAndUrisToLoad]holder != null && holder.fresh"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_3
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1310
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1312
    :cond_4
    const-string/jumbo v4, "ContactPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[obtainPhotoIdsAndUrisToLoad]id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->-get0(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1322
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .end local v3    # "request":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1280
    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 6

    .prologue
    .line 1192
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1193
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1195
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1198
    .local v1, "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    .line 1199
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 1200
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1204
    .end local v1    # "key":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->softenCache()V

    .line 1206
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1207
    const-string/jumbo v4, "ContactPhotoManager"

    const-string/jumbo v5, "[processLoadedImages]mPendingRequests is not empty, requestLoading again"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    .line 1191
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1141
    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 1142
    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1140
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 1217
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

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

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1218
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1216
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1116
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1117
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1113
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    .line 1183
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 1180
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1177
    return v3

    .line 1154
    :pswitch_0
    const-string/jumbo v0, "ContactPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Main handleMessage MESSAGE_REQUEST_LOADING, paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iput-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1156
    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    .line 1160
    :cond_0
    return v4

    .line 1164
    :pswitch_1
    const-string/jumbo v0, "ContactPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Main handleMessage MESSAGE_PHOTOS_LOADED, paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_1

    .line 1166
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->processLoadedImages()V

    .line 1174
    :goto_0
    return v4

    .line 1169
    :cond_1
    const-string/jumbo v0, "ContactPhotoManager"

    const-string/jumbo v1, "The loaded caches ignored, refresh them"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->refreshCache()V

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 866
    if-nez p2, :cond_0

    .line 868
    invoke-virtual {p7, p1, p3, p4, p6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 870
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->isDefaultImageUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 874
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0

    .line 877
    :cond_1
    invoke-static {p2, p3, p4, p5, p7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 836
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->clear()V

    .line 834
    :cond_0
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 845
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 843
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 939
    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 945
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 946
    .local v0, "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    sget-object v2, Lcom/android/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v0, v2, :cond_1

    .line 947
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 938
    .end local v0    # "holder":Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_2
    return-void
.end method
