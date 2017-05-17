.class public Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
.super Ljava/lang/Object;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;,
        Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mLoader:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

.field private final mPackData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stickerPackId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->getPackageNameFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->onDataLoaded()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->putPackageName(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "package_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_COLUMNS:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 49
    sput-object v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    .line 43
    return-void
.end method

.method private getPackageNameFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stickerPackId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 250
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES:Landroid/net/Uri;

    .line 251
    sget-object v2, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 250
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 252
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 270
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Exception on querying sticker package name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 271
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    return-object p2

    .line 270
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 253
    :cond_2
    return-object p2

    .line 255
    :cond_3
    :try_start_3
    const-string/jumbo v0, "package_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 256
    .local v9, "packageId":I
    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 257
    .local v8, "name":I
    if-ltz v9, :cond_4

    if-gez v8, :cond_7

    .line 258
    :cond_4
    const-string/jumbo v0, "Negative column value when trying to load sticker packs, aborting"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    :try_start_5
    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v10

    goto :goto_1

    .line 259
    :cond_6
    return-object p2

    .line 261
    :cond_7
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 270
    if-eqz v6, :cond_8

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_8
    :goto_2
    if-eqz v10, :cond_9

    :try_start_8
    throw v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_3
    move-exception v10

    goto :goto_2

    .line 263
    :cond_9
    return-object v0

    .line 270
    :cond_a
    if-eqz v6, :cond_b

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_b
    :goto_3
    if-eqz v10, :cond_1

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_4
    move-exception v10

    goto :goto_3

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "name":I
    .end local v9    # "packageId":I
    :catch_5
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_4
    if-eqz v6, :cond_c

    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_c
    :goto_5
    if-eqz v1, :cond_e

    :try_start_d
    throw v1

    :catch_6
    move-exception v2

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_5

    :cond_d
    if-eq v1, v2, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_4
.end method

.method private onDataLoaded()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mLoader:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;->onStickerDataLoaded()V

    .line 67
    :cond_0
    return-void
.end method

.method private putPackageName(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private replaceUriKey(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "oldUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method


# virtual methods
.method public cachePackageName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localImageUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "stickerUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    const-string/jumbo v5, "com.sonymobile.sketch.provider.external.ContentProvider"

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 284
    invoke-virtual {p0, p3}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->retrievePackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 285
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->replaceUriKey(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 287
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 291
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 292
    return-void

    .line 294
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, "stickerPackId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 296
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pack$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    .line 297
    .local v0, "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    iget-object v5, v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->packageId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    iget-object v2, v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->name:Ljava/lang/String;

    .line 302
    .end local v0    # "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 303
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->putPackageName(Landroid/net/Uri;Ljava/lang/String;)V

    .line 304
    return-void

    .line 307
    :cond_5
    new-instance v5, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public getPackAt(I)Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    return-object v0
.end method

.method public getPackCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getRecentStickers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 234
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNewStoreContent(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 354
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/provider/SketchContract;->META:Landroid/net/Uri;

    .line 355
    invoke-static {}, Lcom/sonyericsson/conversations/provider/SketchContract;->metaCols()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 354
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 356
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const-string/jumbo v0, "has_new_content"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 361
    .local v8, "hasNewContentIndex":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 368
    :goto_0
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-eqz v9, :cond_6

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 362
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "hasNewContentIndex":I
    :catch_0
    move-exception v7

    .line 363
    .local v7, "e":Ljava/lang/SecurityException;
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Probably a certificate mismatch between debug signed app and Sketch app downloaded from store: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 367
    :cond_1
    return v10

    .line 368
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception v9

    goto :goto_2

    .line 357
    :cond_4
    return v10

    .restart local v8    # "hasNewContentIndex":I
    :cond_5
    move v0, v10

    .line 361
    goto :goto_0

    .line 368
    :catch_2
    move-exception v9

    goto :goto_1

    .line 361
    :cond_6
    return v0

    .line 368
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "hasNewContentIndex":I
    :catch_3
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_3
    if-eqz v6, :cond_7

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_4
    if-eqz v1, :cond_9

    :try_start_7
    throw v1

    :catch_4
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_4

    :cond_8
    if-eq v1, v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    throw v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_3
.end method

.method public declared-synchronized hasRecents()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshStickerData(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->hasValidSketchApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->unloadStickers()V

    .line 77
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mLoader:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mLoader:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mLoader:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    :cond_1
    return-void
.end method

.method public removePackageName(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    sget-object v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public retrievePackageName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 334
    sget-object v0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->PACKAGE_NAME_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setOnStickerDataLoadedListener(Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    .line 62
    return-void
.end method

.method public declared-synchronized unloadStickers()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mPackData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mStickerDataListener:Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$OnStickerDataChangedListener;->onStickerDataLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 86
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateRecentsWithSticker(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)V
    .locals 3
    .param p1, "sticker"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    .prologue
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->mRecents:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->saveRecentStickersJsonArray(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 237
    return-void
.end method
