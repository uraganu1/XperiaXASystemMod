.class public Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
.super Ljava/lang/Object;
.source "GawManager.java"


# static fields
.field private static final ALPHA_SIZE:I = 0x8

.field private static final BLUE_SIZE:I = 0x8

.field public static final CONTACT_ID_DEFAULT_VAL:I = -0x1

.field private static final DEPTH_SIZE:I = 0x0

.field private static final GAW_DATA_PROJECTION:[Ljava/lang/String;

.field public static final GAW_DATA_URI:Landroid/net/Uri;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GAW_DATA_WHERE:Ljava/lang/String; = "(mimetype=\'vnd.android.cursor.item/name\' OR mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND raw_contact_id=name_raw_contact_id"
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GAW_SORT_ORDER:Ljava/lang/String; = "contact_id"
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final GREEN_SIZE:I = 0x8

.field private static final RED_SIZE:I = 0x8

.field private static final STENCIL_SIZE:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;


# instance fields
.field private final mArt:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/generativeartwork/GenerativeArtWork;",
            "Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorPalette:[I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGawContactsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonymobile/generativeartwork/helper/OutputSymbols;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickContactPhotoSize:I

.field private final mThumbnailSize:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mQuickContactPhotoSize:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 83
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_PROJECTION:[Ljava/lang/String;

    .line 90
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_URI:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0d00aa

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mThumbnailSize:I

    .line 106
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mQuickContactPhotoSize:I

    .line 108
    new-instance v1, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;

    invoke-direct {v1, p1}, Lcom/sonymobile/generativeartwork/settings/SquarePatternSetupW17_2;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "settings":Lcom/sonymobile/generativeartwork/settings/LayerSettings;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager$1;-><init>(Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;Landroid/content/Context;Lcom/sonymobile/generativeartwork/settings/LayerSettings;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mArt:Ljava/util/concurrent/FutureTask;

    .line 128
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mArt:Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "ArtworkGenerator init"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 130
    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mColorPalette:[I

    .line 131
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    return-void
.end method

.method private checkIfColumnValueMatches(Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "valueToMatch"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "contactDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    if-nez v0, :cond_1

    .line 511
    const-class v1, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    monitor-enter v1

    .line 512
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 517
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queryAllContacts()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(mimetype=\'vnd.android.cursor.item/name\' OR mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND raw_contact_id=name_raw_contact_id"

    .line 495
    const-string/jumbo v5, "contact_id"

    .line 494
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryAndResolveCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 384
    const/4 v0, 0x0

    .local v0, "gawCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->querySingleContact(J)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    .local v0, "gawCursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAndResolveCharsForContact(Landroid/database/Cursor;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 386
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 385
    :cond_1
    return-object v1

    .line 386
    .end local v0    # "gawCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private queryAndResolveCharsForContact(Landroid/database/Cursor;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 14
    .param p1, "gawCursor"    # Landroid/database/Cursor;

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v12, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v12}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    return-object v12

    .line 404
    :cond_0
    const/4 v1, 0x0

    .line 405
    .local v1, "displayName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 406
    .local v8, "phone":Ljava/lang/String;
    const/4 v10, 0x0

    .line 407
    .local v10, "phoneTemp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 408
    .local v3, "email":Ljava/lang/String;
    const/4 v6, 0x0

    .line 409
    .local v6, "emailTemp":Ljava/lang/String;
    const-string/jumbo v12, "mimetype"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 410
    .local v11, "structuredNameMimetypeIndex":I
    const-string/jumbo v12, "data1"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 411
    .local v2, "displayNameIndex":I
    const-string/jumbo v12, "mimetype"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 412
    .local v9, "phoneMimetypeIndex":I
    const-string/jumbo v12, "data1"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 413
    .local v7, "numberIndex":I
    const-string/jumbo v12, "mimetype"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "emailMimetypeIndex":I
    const-string/jumbo v12, "data1"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, "emailIndex":I
    const-string/jumbo v12, "display_name"

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 416
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "email":Ljava/lang/String;
    .end local v6    # "emailTemp":Ljava/lang/String;
    .end local v8    # "phone":Ljava/lang/String;
    .end local v10    # "phoneTemp":Ljava/lang/String;
    .local v0, "dataEntryDisplayNameIndex":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 417
    const-string/jumbo v12, "vnd.android.cursor.item/name"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 419
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 420
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v12, "vnd.android.cursor.item/phone_v2"

    .line 421
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 420
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 422
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, "phoneTemp":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v10}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->checkIfColumnValueMatches(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 428
    move-object v8, v10

    .local v8, "phone":Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v8    # "phone":Ljava/lang/String;
    .end local v10    # "phoneTemp":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "vnd.android.cursor.item/email_v2"

    .line 431
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 430
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 432
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, "emailTemp":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v6}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->checkIfColumnValueMatches(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 438
    move-object v3, v6

    .local v3, "email":Ljava/lang/String;
    goto :goto_0

    .line 442
    .end local v3    # "email":Ljava/lang/String;
    .end local v6    # "emailTemp":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1, v8, v3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v12

    return-object v12
.end method

.method private queryAndResolveCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 9
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 390
    const-string/jumbo v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 392
    const-string/jumbo v0, "data1"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "mimetype"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "display_name"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 394
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 395
    const-string/jumbo v5, "raw_contact_id"

    .line 394
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 396
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAndResolveCharsForContact(Landroid/database/Cursor;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 397
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .line 396
    :cond_1
    return-object v0

    .line 397
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v3, v7

    goto :goto_1
.end method

.method private querySingleContact(J)Landroid/database/Cursor;
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    .line 482
    const-string/jumbo v3, "contact_id = ? AND (mimetype=\'vnd.android.cursor.item/name\' OR mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\') AND raw_contact_id=name_raw_contact_id"

    .line 483
    .local v3, "dataRowWhere":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 484
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v4, v2

    .line 486
    .local v4, "dataRowParams":[Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "data"

    .line 486
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 489
    .local v1, "contactUri":Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_PROJECTION:[Ljava/lang/String;

    .line 490
    const/4 v5, 0x0

    .line 489
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 488
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->GAW_DATA_URI:Landroid/net/Uri;

    .restart local v1    # "contactUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private render(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "gawLetters"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .param p2, "bitmapSize"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createOrUpdateContactInitials(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAndResolveCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":contactId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 145
    .local v0, "symbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAndResolveCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":contactId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method public getCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 3
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":lookupUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 163
    .local v0, "symbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAndResolveCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":lookupUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public getCharsForContact(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 2
    .param p1, "request"    # Lcom/android/contacts/photomanager/Request;

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->isGalRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->getContactLookuoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->getContactId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0
.end method

.method public getCharsForContactFromMap(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 181
    .local v0, "symbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    return-object v0
.end method

.method public getCharsForContactFromMap(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 2
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 194
    .local v0, "symbols":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    return-object v0
.end method

.method public getCharsForContactFromMap(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 2
    .param p1, "request"    # Lcom/android/contacts/photomanager/Request;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->isGalRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->getContactLookuoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContactFromMap(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/photomanager/Request;->getContactId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContactFromMap(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0
.end method

.method public getColorForSymbols(J)I
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getColorForSymbols(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)I

    move-result v0

    return v0
.end method

.method public getColorForSymbols(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)I
    .locals 4
    .param p1, "initials"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .prologue
    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mArt:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-virtual {v2, p1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->getBaseColor(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error getting Color for Symbols."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mColorPalette:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    return v2

    .line 469
    :catch_1
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Interrupted while waiting for getting Color for Symbols."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getColorPalette()[I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mColorPalette:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final getGawContactsMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonymobile/generativeartwork/helper/OutputSymbols;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    return-object v0
.end method

.method public onAppStart()V
    .locals 29

    .prologue
    .line 276
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 277
    const/16 v25, 0x0

    const/16 v16, 0x0

    .local v16, "gawCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->queryAllContacts()Landroid/database/Cursor;

    move-result-object v16

    .line 278
    .local v16, "gawCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_6

    .line 279
    const-wide/16 v6, -0x1

    .line 280
    .local v6, "currentContactId":J
    const-wide/16 v22, -0x1

    .line 281
    .local v22, "previousContactId":J
    const/4 v8, 0x0

    .line 282
    .local v8, "displayName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 283
    .local v18, "phone":Ljava/lang/String;
    const/16 v20, 0x0

    .line 284
    .local v20, "phoneTemp":Ljava/lang/String;
    const/4 v10, 0x0

    .line 285
    .local v10, "email":Ljava/lang/String;
    const/4 v13, 0x0

    .line 286
    .local v13, "emailTemp":Ljava/lang/String;
    const-string/jumbo v24, "mimetype"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 287
    .local v21, "structuredNameMimetypeIndex":I
    const-string/jumbo v24, "data1"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 288
    .local v9, "displayNameIndex":I
    const-string/jumbo v24, "mimetype"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 289
    .local v19, "phoneMimetypeIndex":I
    const-string/jumbo v24, "data1"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 290
    .local v17, "numberIndex":I
    const-string/jumbo v24, "mimetype"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 291
    .local v12, "emailMimetypeIndex":I
    const-string/jumbo v24, "data1"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 292
    .local v11, "emailIndex":I
    const-string/jumbo v24, "contact_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 293
    .local v4, "contactIdIndex":I
    const-string/jumbo v24, "display_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 294
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v13    # "emailTemp":Ljava/lang/String;
    .end local v18    # "phone":Ljava/lang/String;
    .end local v20    # "phoneTemp":Ljava/lang/String;
    .local v5, "dataEntryDisplayNameIndex":I
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 295
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 297
    const-wide/16 v26, -0x1

    cmp-long v24, v22, v26

    if-nez v24, :cond_1

    .line 298
    move-wide/from16 v22, v6

    .line 300
    :cond_1
    cmp-long v24, v22, v6

    if-eqz v24, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1, v10}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v27

    .line 301
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-wide/from16 v22, v6

    .line 304
    const/4 v8, 0x0

    .line 305
    .restart local v8    # "displayName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 306
    .restart local v18    # "phone":Ljava/lang/String;
    const/16 v20, 0x0

    .line 307
    .restart local v20    # "phoneTemp":Ljava/lang/String;
    const/4 v10, 0x0

    .line 308
    .restart local v10    # "email":Ljava/lang/String;
    const/4 v13, 0x0

    .line 310
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "email":Ljava/lang/String;
    .end local v18    # "phone":Ljava/lang/String;
    .end local v20    # "phoneTemp":Ljava/lang/String;
    :cond_2
    const-string/jumbo v24, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 312
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 315
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 319
    .local v20, "phoneTemp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->checkIfColumnValueMatches(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 321
    move-object/from16 v18, v20

    .local v18, "phone":Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v18    # "phone":Ljava/lang/String;
    .end local v20    # "phoneTemp":Ljava/lang/String;
    :cond_4
    const-string/jumbo v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 325
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 329
    .local v13, "emailTemp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v13}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->checkIfColumnValueMatches(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 331
    move-object v10, v13

    .local v10, "email":Ljava/lang/String;
    goto/16 :goto_0

    .line 336
    .end local v10    # "email":Ljava/lang/String;
    .end local v13    # "emailTemp":Ljava/lang/String;
    :cond_5
    const-wide/16 v26, -0x1

    cmp-long v24, v6, v26

    if-eqz v24, :cond_6

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1, v10}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    .end local v4    # "contactIdIndex":I
    .end local v5    # "dataEntryDisplayNameIndex":I
    .end local v6    # "currentContactId":J
    .end local v9    # "displayNameIndex":I
    .end local v11    # "emailIndex":I
    .end local v12    # "emailMimetypeIndex":I
    .end local v17    # "numberIndex":I
    .end local v19    # "phoneMimetypeIndex":I
    .end local v21    # "structuredNameMimetypeIndex":I
    .end local v22    # "previousContactId":J
    :cond_6
    if-eqz v16, :cond_7

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_1
    if-eqz v25, :cond_b

    throw v25

    :catch_0
    move-exception v25

    goto :goto_1

    .end local v16    # "gawCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v24

    :try_start_2
    throw v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v25

    move-object/from16 v28, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v28

    :goto_2
    if-eqz v16, :cond_8

    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_3
    if-eqz v25, :cond_a

    throw v25

    :catch_2
    move-exception v26

    if-nez v25, :cond_9

    move-object/from16 v25, v26

    goto :goto_3

    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    throw v24

    .line 341
    .restart local v16    # "gawCursor":Landroid/database/Cursor;
    :cond_b
    sget-boolean v24, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v24, :cond_c

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 344
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/sonymobile/generativeartwork/helper/OutputSymbols;>;"
    sget-object v25, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    .line 345
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Gaw Entry, contactId: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, " gaw letters: "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 346
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    move-object/from16 v24, v0

    const/16 v27, 0x0

    aget-char v24, v24, v27

    .line 345
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 346
    const-string/jumbo v26, " "

    .line 345
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 346
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    move-object/from16 v24, v0

    const/16 v27, 0x1

    aget-char v24, v24, v27

    .line 345
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 343
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 349
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/sonymobile/generativeartwork/helper/OutputSymbols;>;"
    .end local v15    # "entry$iterator":Ljava/util/Iterator;
    :cond_c
    sget-object v24, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 275
    return-void

    .line 340
    .end local v16    # "gawCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v24

    goto/16 :goto_2
.end method

.method public removeContact(J)V
    .locals 3
    .param p1, "contactId"    # J

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mGawContactsMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public renderPhoto(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "symbols"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .prologue
    .line 244
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mQuickContactPhotoSize:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->render(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "symbols"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .prologue
    .line 234
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mThumbnailSize:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->render(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "letters"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .param p2, "bitmapSize"    # I

    .prologue
    .line 252
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 253
    if-gtz p2, :cond_0

    .line 254
    iget p2, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mThumbnailSize:I

    .line 256
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    .local v3, "gawBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->mArt:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 259
    .local v0, "art":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/generativeartwork/GenerativeArtWork;Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;>;"
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;

    invoke-virtual {v4, p1}, Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;->setLetters(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;)V

    .line 260
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/sonymobile/generativeartwork/GenerativeArtWork;

    invoke-virtual {v4, v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork;->render(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "art":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/generativeartwork/GenerativeArtWork;Lcom/sonymobile/generativeartwork/layers/ArtisticLayer;>;"
    :goto_0
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 267
    return-object v3

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error rendering Thumbnail."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Interrupted while waiting for rendering Thumbnail."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p1, p2, p3}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0
.end method

.method public final resolveSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->resolveChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    return-object v0
.end method
