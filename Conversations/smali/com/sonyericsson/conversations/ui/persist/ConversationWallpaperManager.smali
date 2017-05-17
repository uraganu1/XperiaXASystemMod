.class public Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

.field private static final DEBUG:Z

.field private static final WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private final mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDir:Ljava/io/File;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    return v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

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

    const/4 v2, 0x6

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaper(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeInFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    .line 59
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v1, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    const-wide/16 v4, 0xa

    .line 66
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 65
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 64
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    .line 81
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->create(I)Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    .line 82
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;-><init>()V

    return-void
.end method

.method private cacheWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-virtual {v1, p2, p1}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 431
    .local v0, "old":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 428
    return-void

    .line 432
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    .end local v0    # "old":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->evictAll()V

    .line 571
    return-void
.end method

.method private deleteCachedWallpaper(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 415
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 412
    return-void

    .line 413
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private executeIoTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "ioTask"    # Ljava/lang/Runnable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->waitForIoTask(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method private getCachedWallpaper(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    monitor-enter v2

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperCache:Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/util/KiloByteBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2

    .line 403
    return-object v0

    .line 400
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 519
    .local v0, "wallpaperDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;->-get0()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method private getSampleSize(IIII)I
    .locals 4
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 159
    sub-int v0, p4, p2

    .line 160
    .local v0, "diffHeight":I
    sub-int v1, p3, p1

    .line 162
    .local v1, "diffWidth":I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 169
    .local v2, "s":I
    :goto_0
    return v2

    .line 164
    .end local v2    # "s":I
    :cond_0
    if-le v1, v0, :cond_1

    .line 165
    mul-int/lit8 v3, p3, 0x2

    div-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "s":I
    goto :goto_0

    .line 167
    .end local v2    # "s":I
    :cond_1
    mul-int/lit8 v3, p4, 0x2

    div-int/2addr v3, p2

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "s":I
    goto :goto_0
.end method

.method private getSampleSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaper"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v2, 0x1

    .line 127
    .local v2, "inSampleSize":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 128
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 129
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Could not open input stream to load wallpaper."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :cond_0
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 134
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 135
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 136
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 137
    .local v0, "display":Landroid/view/Display;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 138
    .local v1, "displaySize":Landroid/graphics/Point;
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 139
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 138
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getSampleSize(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 141
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 144
    return v2

    .line 140
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v6

    .line 141
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 140
    throw v6
.end method

.method private getWallpaper(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->wallpaperIsCached(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->waitForIoTask(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 299
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    const-string/jumbo v6, " does not have a wallpaper set, using default."

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 303
    :cond_0
    return-object v7

    .line 307
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getCachedWallpaper(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 309
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 310
    const-string/jumbo v5, "Wallpaper not cached or preloaded."

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 313
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 317
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-static {p2, v0, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplayStationaryBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 318
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_5

    .line 319
    sget-boolean v5, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 320
    const-string/jumbo v5, "Bitmap is null, cannot set wallpaper"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 322
    :cond_4
    return-object v7

    .line 325
    :cond_5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 326
    .local v4, "wallpaper":Landroid/graphics/drawable/BitmapDrawable;
    const v5, 0x7f0e0036

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 327
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 326
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 328
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 329
    return-object v4
.end method

.method private getWallpaperDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 524
    const-string/jumbo v0, "wallpaper"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperDir:Ljava/io/File;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mWallpaperDir:Ljava/io/File;

    return-object v0
.end method

.method private getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 576
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 577
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 351
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 352
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private loadFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    sget-boolean v2, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 498
    const-string/jumbo v2, "Loading wallpaper from file."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 501
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 503
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not create Bitmap from wallpaper file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->cacheWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 507
    return-object v0
.end method

.method private loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaper"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getSampleSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 108
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 109
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Could not open input stream to load wallpaper."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 118
    if-nez v0, :cond_1

    .line 119
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "No image data read from stream."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "The image is too large, it will cause OutOfMemoryError."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 116
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 115
    throw v4

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method private storeInFile(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 474
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 475
    .local v3, "wallpaperFile":Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 476
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->WALLPAPER_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v4, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 477
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 478
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to store "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 485
    .end local v2    # "success":Z
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    if-eqz v5, :cond_5

    throw v5

    .line 480
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "success":Z
    :cond_1
    :try_start_4
    sget-boolean v4, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wallpaper for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " stored in file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 484
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 485
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    if-eqz v5, :cond_6

    throw v5

    :catch_1
    move-exception v5

    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "success":Z
    :catch_2
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    if-eq v5, v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v4

    .line 473
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "success":Z
    :cond_6
    return-void

    .line 485
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "success":Z
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .local v0, "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private storeWallpaper(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaper"    # Landroid/net/Uri;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 210
    .local v8, "orientation":I
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 211
    .local v10, "wm":Landroid/view/WindowManager;
    if-nez v10, :cond_0

    .line 212
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Window service is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    .line 217
    .local v7, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 218
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v1, v2, v8, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->scaleAndRotate(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 219
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-static {v9, v1, v2, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->cropCenterBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 222
    .local v3, "croppedBitmap":Landroid/graphics/Bitmap;
    if-eq v9, v6, :cond_1

    .line 223
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    :cond_1
    if-eq v3, v9, :cond_2

    .line 226
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    :cond_2
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->cacheWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 250
    .local v0, "storeTask":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->executeIoTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v1

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/forklift/HeavyProperty;->invalidateOn(Lcom/sonymobile/forklift/Forklift;)V

    .line 205
    return-void
.end method

.method private waitForIoTask(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->isTaskExecuting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Waiting for I/O task for conversation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->mExecutor:Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    invoke-virtual {v1, p1, v4, v5, v2}, Lcom/sonyericsson/conversations/util/MonitorableThreadPoolExecutor;->await(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Waiting for I/O task for conversation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wallpaperIsCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getCachedWallpaper(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyWallpaper(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectedWallpaper"    # Landroid/net/Uri;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 184
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeWallpaper(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0
.end method

.method public deleteWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteCachedWallpaper(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 267
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/HeavyProperty;->invalidateOn(Lcom/sonymobile/forklift/Forklift;)V

    .line 262
    return-void
.end method

.method public getWallpaperAsHeavyProperty(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ")",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Ljava/lang/Object;Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->disableCache()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    return-object v0
.end method

.method public hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ")",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;

    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Ljava/lang/Object;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 362
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$3;->byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    return-object v0
.end method

.method public isWallpaperSupportedFor(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Z
    .locals 2
    .param p1, "conversationType"    # Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .prologue
    .line 371
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 561
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->-getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 560
    :goto_0
    return-void

    .line 564
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->clearCache()V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public preLoad(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 446
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperKeyFor(Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->wallpaperIsCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$4;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 461
    .local v1, "loadTask":Ljava/lang/Runnable;
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->executeIoTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
