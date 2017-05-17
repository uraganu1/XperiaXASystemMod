.class Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final MAX_PHOTOS_TO_PRELOAD:I = 0x64

.field private static final MESSAGE_LOAD_PHOTOS:I = 0x1

.field private static final MESSAGE_PRELOAD_PHOTOS:I = 0x0

.field private static final PHOTO_PRELOAD_DELAY:I = 0x1f4

.field private static final PRELOAD_BATCH:I = 0x19

.field private static final PRELOAD_STATUS_DONE:I = 0x2

.field private static final PRELOAD_STATUS_IN_PROGRESS:I = 0x1

.field private static final PRELOAD_STATUS_NOT_STARTED:I


# instance fields
.field private mBuffer:[B

.field private final mContactLookupKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsInitials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mFavoriteContactsInitials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/photomanager/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadFavoritesIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v2, 0x19

    .line 1194
    iput-object p1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    .line 1195
    const-string/jumbo v0, "ContactPhotoLoader"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 1173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1175
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    .line 1178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1177
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactLookupKeys:Ljava/util/Map;

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1179
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    .line 1182
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    .line 1183
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    .line 1192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1196
    iput-object p2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1194
    return-void
.end method

.method private getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B
    .locals 3
    .param p1, "initials"    # Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .param p2, "size"    # I

    .prologue
    .line 1444
    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v2, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->renderThumbnail(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1445
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/contacts/common/util/BitmapUtil;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 1446
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1447
    return-object v1
.end method

.method private loadGawFavoritesThumbnails()V
    .locals 8

    .prologue
    .line 1403
    iget-object v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1404
    .local v2, "contactId":J
    iget-object v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1405
    .local v4, "initalsRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v5

    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B

    move-result-object v0

    .line 1408
    .local v0, "bytes":[B
    iget-object v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v0, v7, v6}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_0

    .line 1410
    .end local v0    # "bytes":[B
    .end local v2    # "contactId":J
    .end local v4    # "initalsRequest":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1402
    return-void
.end method

.method private loadGawPhotosForPhotoIdsThatAreLeft(Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 1503
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 1504
    const-string/jumbo v0, "contact_id"

    aput-object v0, v2, v1

    .line 1506
    .local v2, "dataViewColumns":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1507
    .local v11, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "photo_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-direct {p0, v11, p1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->setSqlInSelection(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 1509
    const-string/jumbo v0, " AND mimetype=\'vnd.android.cursor.item/photo\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    const/4 v8, 0x0

    .local v8, "cursorContact":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1512
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1511
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1513
    .local v8, "cursorContact":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1514
    const-string/jumbo v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1515
    .local v9, "index":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1517
    .local v6, "contactId":J
    new-instance v10, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1518
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v0, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    const/4 v1, 0x0

    .line 1517
    invoke-direct {v10, v0, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 1519
    .local v10, "request":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 1522
    .end local v6    # "contactId":J
    .end local v8    # "cursorContact":Landroid/database/Cursor;
    .end local v9    # "index":I
    .end local v10    # "request":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_1
    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    .restart local v8    # "cursorContact":Landroid/database/Cursor;
    :cond_1
    if-eqz v8, :cond_2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v12, :cond_5

    throw v12

    :catch_1
    move-exception v12

    goto :goto_3

    .end local v8    # "cursorContact":Landroid/database/Cursor;
    :catch_2
    move-exception v3

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    if-eq v1, v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 1500
    .restart local v8    # "cursorContact":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 1522
    .end local v8    # "cursorContact":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v12

    goto :goto_1
.end method

.method private loadGawThumbnails(Z)V
    .locals 10
    .param p1, "preloading"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1416
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1417
    .local v2, "contactId":J
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1418
    .local v4, "initials":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v7

    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B

    move-result-object v0

    .line 1419
    .local v0, "bytes":[B
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7, v4, v0, p1, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_0

    .line 1423
    .end local v0    # "bytes":[B
    .end local v2    # "contactId":J
    .end local v4    # "initials":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1425
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactLookupKeys:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "lookupKey$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1426
    .local v5, "lookupKey":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactLookupKeys:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1427
    .restart local v4    # "initials":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v7

    invoke-static {v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B

    move-result-object v0

    .line 1428
    .restart local v0    # "bytes":[B
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7, v4, v0, p1, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_1

    .line 1430
    .end local v0    # "bytes":[B
    .end local v4    # "initials":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    .end local v5    # "lookupKey":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactLookupKeys:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1432
    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1415
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1382
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactsInitials:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mContactLookupKeys:Ljava/util/Map;

    .line 1383
    iget-object v4, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1382
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V

    .line 1384
    invoke-direct {p0, v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1385
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1386
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v0, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v0, :cond_0

    .line 1387
    invoke-direct {p0, v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadGawThumbnails(Z)V

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1381
    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 2
    .param p1, "preloading"    # Z

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadThumbnailsFromPhotoIds(Z)V

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1393
    return-void
.end method

.method private loadThumbnailsFromPhotoIds(Z)V
    .locals 14
    .param p1, "preloading"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 1451
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1452
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->setSqlInSelection(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 1455
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1456
    invoke-static {}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    .line 1457
    iget-object v3, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1458
    const/4 v4, 0x0

    .line 1459
    const/4 v5, 0x0

    .line 1455
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1461
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1462
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1464
    .local v8, "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1465
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v8, v6, p1, v1}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 1469
    .end local v6    # "bytes":[B
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "id":Ljava/lang/Long;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_1
    if-eqz v7, :cond_0

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_2

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v11

    :goto_3
    if-eqz v0, :cond_5

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 1472
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "id$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1473
    .restart local v8    # "id":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1474
    const/4 v10, 0x0

    .local v10, "profileCursor":Landroid/database/Cursor;
    :try_start_4
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1475
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1476
    const/4 v5, 0x0

    .line 1474
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1477
    .local v10, "profileCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1478
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1479
    const/4 v3, -0x1

    .line 1478
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1485
    :goto_5
    if-eqz v10, :cond_7

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    move-object v0, v11

    :goto_6
    if-eqz v0, :cond_6

    throw v0

    .line 1483
    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v8, v1, p1, v2}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    .line 1485
    .end local v10    # "profileCursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    move-object v11, v0

    move-object v0, v1

    :goto_7
    if-eqz v10, :cond_9

    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_9
    :goto_8
    if-eqz v11, :cond_b

    throw v11

    .restart local v10    # "profileCursor":Landroid/database/Cursor;
    :catch_4
    move-exception v0

    goto :goto_6

    .end local v10    # "profileCursor":Landroid/database/Cursor;
    :catch_5
    move-exception v1

    if-nez v11, :cond_a

    move-object v11, v1

    goto :goto_8

    :cond_a
    if-eq v11, v1, :cond_9

    invoke-virtual {v11, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    throw v0

    .line 1486
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v0, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-nez v0, :cond_6

    .line 1488
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v0, v8, v11, p1, v12}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_4

    .line 1491
    .end local v8    # "id":Ljava/lang/Long;
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v0, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1492
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadGawPhotosForPhotoIdsThatAreLeft(Ljava/util/Set;)V

    .line 1450
    :cond_e
    return-void

    .line 1485
    .restart local v8    # "id":Ljava/lang/Long;
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 1469
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "id":Ljava/lang/Long;
    .end local v9    # "id$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v0

    move-object v1, v11

    goto/16 :goto_1
.end method

.method private loadUriBasedPhotos()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1575
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "uriRequest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/photomanager/Request;

    .line 1576
    .local v6, "uriRequest":Lcom/android/contacts/photomanager/Request;
    invoke-virtual {v6}, Lcom/android/contacts/photomanager/Request;->getContactPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 1577
    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v8, :cond_0

    .line 1578
    const/16 v8, 0x4000

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 1582
    :cond_0
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->openPhotoInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1583
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 1584
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "size":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 1588
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1590
    .end local v4    # "size":I
    :catchall_0
    move-exception v8

    .line 1591
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1590
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1604
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 1605
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1606
    const/4 v1, 0x0

    .line 1607
    .local v1, "bytes":[B
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v8, v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v8, :cond_1

    .line 1608
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v8, v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v8

    invoke-direct {p0, v8, v12}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B

    move-result-object v1

    .line 1611
    .end local v1    # "bytes":[B
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-virtual {v6}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v9

    invoke-static {v8, v5, v1, v12, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_0

    .line 1591
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "size":I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1593
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 1594
    invoke-virtual {v6}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v10

    .line 1593
    const/4 v11, 0x0

    invoke-static {v8, v5, v9, v11, v10}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    .line 1596
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "size":I
    :cond_3
    sget-object v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v1, 0x0

    .line 1598
    .restart local v1    # "bytes":[B
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v8, v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v8, :cond_4

    .line 1599
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v8, v8, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Lcom/android/contacts/photomanager/Request;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v8

    .line 1600
    const/4 v9, 0x0

    .line 1599
    invoke-direct {p0, v8, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getGawThumbnailBytes(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)[B

    move-result-object v1

    .line 1602
    .end local v1    # "bytes":[B
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-virtual {v6}, Lcom/android/contacts/photomanager/Request;->getRequestedExtent()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v8, v5, v1, v10, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1615
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "uriRequest":Lcom/android/contacts/photomanager/Request;
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v8}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1574
    return-void
.end method

.method private openPhotoInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1546
    :catch_0
    move-exception v8

    .line 1547
    .local v8, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1548
    const-string/jumbo v1, "data15"

    const/4 v4, 0x0

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1547
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1552
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    const-string/jumbo v0, "data15"

    .line 1555
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1557
    .local v7, "data":[B
    if-nez v7, :cond_3

    .line 1562
    if-eqz v6, :cond_0

    .line 1563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1558
    :cond_0
    return-object v3

    .line 1562
    .end local v7    # "data":[B
    :cond_1
    if-eqz v6, :cond_2

    .line 1563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1553
    :cond_2
    return-object v3

    .line 1560
    .restart local v7    # "data":[B
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1562
    if-eqz v6, :cond_4

    .line 1563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1560
    :cond_4
    return-object v0

    .line 1561
    .end local v7    # "data":[B
    :catchall_0
    move-exception v0

    .line 1562
    if-eqz v6, :cond_5

    .line 1563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1561
    :cond_5
    throw v0
.end method

.method private preloadPhotosInBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1262
    iget v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v6, v8, :cond_0

    .line 1263
    return-void

    .line 1266
    :cond_0
    iget v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v6, :cond_3

    .line 1267
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->queryContactPhotosForPreload()V

    .line 1268
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v6, v6, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v6, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->queryFavoriteContactPhotosForPreload()V

    .line 1271
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1272
    iput v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1276
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1277
    return-void

    .line 1274
    :cond_2
    iput v9, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 1280
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v6}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/LruCache;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get2(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I

    move-result v7

    if-le v6, v7, :cond_4

    .line 1281
    iput v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1282
    return-void

    .line 1285
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 1286
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 1288
    const/4 v2, 0x0

    .line 1289
    .local v2, "countPhotos":I
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    const/16 v7, 0x19

    if-ge v6, v7, :cond_5

    .line 1290
    add-int/lit8 v2, v2, 0x1

    .line 1291
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1292
    .local v4, "photoId":J
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1294
    .end local v4    # "photoId":J
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1295
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get4(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1296
    add-int/lit8 v2, v2, 0x1

    .line 1297
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1298
    .local v0, "contactId":J
    new-instance v3, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;

    .line 1299
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v6, v6, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mGawManager:Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    invoke-virtual {v6, v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get3(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)I

    move-result v7

    .line 1298
    invoke-direct {v3, v6, v7}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;-><init>(Lcom/sonymobile/generativeartwork/helper/OutputSymbols;I)V

    .line 1300
    .local v3, "request":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mFavoriteContactsInitials:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1302
    .end local v0    # "contactId":J
    .end local v3    # "request":Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$ContactGawRequest;
    :cond_6
    invoke-direct {p0, v9}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1303
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-boolean v6, v6, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mIsGawEnabled:Z

    if-eqz v6, :cond_7

    .line 1304
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadGawFavoritesThumbnails()V

    .line 1307
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1308
    iput v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1311
    :cond_8
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " photos.  Cached bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1312
    iget-object v8, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    invoke-static {v8}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->-get1(Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/LruCache;->size()I

    move-result v8

    .line 1311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1261
    return-void
.end method

.method private queryContactPhotosForPreload()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1321
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1323
    const-string/jumbo v2, "directory"

    .line 1324
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1321
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1325
    const-string/jumbo v2, "limit"

    .line 1326
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1321
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1327
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1328
    const-string/jumbo v3, "photo_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1329
    const-string/jumbo v3, "photo_id NOT NULL AND photo_id!=0"

    .line 1330
    const-string/jumbo v5, "starred DESC, last_time_contacted DESC"

    .line 1329
    const/4 v4, 0x0

    .line 1327
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1332
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1333
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 1339
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v7, :cond_5

    throw v7

    :catch_1
    move-exception v7

    goto :goto_3

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 1320
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 1339
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_1
.end method

.method private queryFavoriteContactPhotosForPreload()V
    .locals 18

    .prologue
    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;

    iget-object v2, v2, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1346
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "favorites_order"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1347
    .local v14, "order":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1348
    const-string/jumbo v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1350
    .local v12, "favOrderArray":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_1

    .line 1352
    :try_start_0
    aget-object v2, v12, v13

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1353
    .local v8, "contactId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1350
    .end local v8    # "contactId":J
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1362
    .end local v12    # "favOrderArray":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_1
    const/16 v16, 0x0

    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1363
    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1364
    const-string/jumbo v5, "starred=1 AND in_visible_group=1 AND photo_uri IS NULL"

    .line 1366
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1362
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1368
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 1369
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1373
    .restart local v8    # "contactId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadFavoritesIds:Ljava/util/Queue;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1378
    .end local v8    # "contactId":J
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_3
    if-eqz v10, :cond_3

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_4
    if-eqz v3, :cond_7

    throw v3

    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v10, :cond_5

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_5
    if-eqz v16, :cond_8

    throw v16

    :catch_1
    move-exception v16

    goto :goto_5

    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v4

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_4

    :cond_6
    if-eq v3, v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v2

    .line 1342
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_8
    return-void

    .line 1378
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object/from16 v3, v16

    goto :goto_3

    .line 1356
    .restart local v12    # "favOrderArray":[Ljava/lang/String;
    .restart local v13    # "i":I
    :catch_3
    move-exception v11

    .local v11, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private setSqlInSelection(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1531
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    return-void

    .line 1534
    :cond_0
    const-string/jumbo v0, " IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    const-string/jumbo v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1530
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1201
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1199
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1252
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1244
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 1247
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1232
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1230
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 1212
    iget v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1213
    return-void

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1217
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/photomanager/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1222
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 1221
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1211
    return-void
.end method
