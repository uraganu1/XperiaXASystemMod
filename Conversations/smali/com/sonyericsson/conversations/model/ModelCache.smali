.class public Lcom/sonyericsson/conversations/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;,
        Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;,
        Lcom/sonyericsson/conversations/model/ModelCache$1;,
        Lcom/sonyericsson/conversations/model/ModelCache$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I


# instance fields
.field private mBriefSlideshowCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsObserver:Landroid/database/ContentObserver;

.field private mMessageLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsParticipantsInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSlideshowMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardContactNameCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/model/ModelCache;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/model/ModelCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/model/ModelCache;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/ModelCache;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/ModelCache;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->values()[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/model/ModelCache;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    .line 48
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    .line 50
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMmsParticipantsInfoCache:Landroid/util/LruCache;

    .line 55
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameCache:Landroid/util/LruCache;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ModelCache$1;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    .line 72
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/model/ModelCache$2;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 40
    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMmsParticipantsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 481
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/conversations/model/ModelCache;
    .locals 2

    .prologue
    const-class v0, Lcom/sonyericsson/conversations/model/ModelCache;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;->INSTANCE:Lcom/sonyericsson/conversations/model/ModelCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cacheMessageSlideshow(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 314
    if-eqz p2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    return-void
.end method

.method public declared-synchronized cleanup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 147
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearMessageMap()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 115
    return-void
.end method

.method public getBriefSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "tag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 226
    .local v0, "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_1

    .line 228
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid brief slideshow in cache, expected tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    const-string/jumbo v2, " but found tag "

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v2

    .line 229
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 237
    .end local v0    # "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    if-nez v0, :cond_3

    .line 238
    invoke-static {p1, p2}, Lcom/android/mms/model/SlideshowModel;->createBriefFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 239
    .restart local v0    # "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v0, p3, p4}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 241
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache miss for brief slideshow (URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    const-string/jumbo v2, ")"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v0    # "briefSlideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    return-object v0
.end method

.method public getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;
    .locals 3
    .param p1, "messageThread"    # J
    .param p3, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 208
    if-nez p3, :cond_0

    .line 209
    return-object v2

    .line 211
    :cond_0
    invoke-static {p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->createKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "messageKey":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(Ljava/lang/String;J)V

    .line 213
    .local v0, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Message;

    return-object v2
.end method

.method public getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;J)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;
    .param p4, "messageThread"    # J

    .prologue
    .line 181
    invoke-static {p2, p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->createKey(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "messageKey":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v1, v2, p4, p5}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(Ljava/lang/String;J)V

    .line 183
    .local v1, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Message;

    .line 186
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 187
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 189
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache miss for message (key = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 191
    const-string/jumbo v4, ")"

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    return-object v0
.end method

.method public getParticipantInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMmsParticipantsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    .line 343
    .local v0, "participantsInfo":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    .end local v0    # "participantsInfo":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 345
    .restart local v0    # "participantsInfo":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache miss for participant info (URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMmsParticipantsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_1
    return-object v0
.end method

.method public getSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "tag"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 272
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_1

    .line 274
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid slideshow in cache, expected tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    const-string/jumbo v2, " but found tag "

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getTag()J

    move-result-wide v2

    .line 275
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 283
    .end local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    if-nez v0, :cond_3

    .line 284
    invoke-static {p1, p2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 285
    .restart local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v0, p3, p4}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 287
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache miss for slideshow (URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    return-object v0
.end method

.method public getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vCardUri"    # Landroid/net/Uri;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 364
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache miss for vCard contact name (URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 127
    :try_start_0
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 129
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$3;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/model/ModelCache$3;-><init>(Lcom/sonyericsson/conversations/model/ModelCache;I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mBriefSlideshowCache:Landroid/util/LruCache;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mContactsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 137
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    .end local v0    # "am":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public modifySlideshowTag(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "tag"    # J

    .prologue
    .line 326
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mSlideshowMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    .line 328
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p2, p3}, Lcom/android/mms/model/SlideshowModel;->setTag(J)V

    .line 325
    :cond_0
    return-void
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 491
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->-getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 494
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/ModelCache;->clearCache()V

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeMessage(JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Message;
    .locals 3
    .param p1, "messageThread"    # J
    .param p3, "messageKey"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v1, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;

    invoke-direct {v1, p3, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;-><init>(Ljava/lang/String;J)V

    .line 167
    .local v1, "messageCacheKey":Lcom/sonyericsson/conversations/model/ModelCache$MessageCacheKey;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ModelCache;->mMessageLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Message;

    .line 168
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    return-object v0
.end method
