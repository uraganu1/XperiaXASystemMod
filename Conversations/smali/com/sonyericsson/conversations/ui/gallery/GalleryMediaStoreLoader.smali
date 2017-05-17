.class Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;
.super Landroid/content/AsyncTaskLoader;
.source "GalleryMediaStoreLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field private final VIDEO_PROJECTION:[Ljava/lang/String;

.field private final forceLoadContentObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mini_thumb_magic"

    aput-object v1, v0, v4

    .line 36
    const-string/jumbo v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v7

    .line 37
    const-string/jumbo v1, "_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mini_thumb_magic"

    aput-object v1, v0, v4

    .line 39
    const-string/jumbo v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v7

    .line 40
    const-string/jumbo v1, "_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->forceLoadContentObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 49
    return-void
.end method

.method private allowToAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {p1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 143
    return v2

    .line 144
    :cond_0
    const-string/jumbo v0, "XPERIA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    return v2

    .line 147
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortByCol"    # Ljava/lang/String;
    .param p4, "idCol"    # Ljava/lang/String;
    .param p5, "sizeCol"    # Ljava/lang/String;
    .param p6, "dateTakenCol"    # Ljava/lang/String;
    .param p7, "mimeTypeCol"    # Ljava/lang/String;
    .param p8, "type"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;
    .param p9, "pathCol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v12, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " DESC"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 108
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 110
    .local v11, "cur":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 111
    return-object v12

    .line 114
    :cond_0
    :try_start_0
    move-object/from16 v0, p4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 115
    .local v15, "idC":I
    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 116
    .local v20, "sizeC":I
    move-object/from16 v0, p6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 117
    .local v13, "dateTakenC":I
    move-object/from16 v0, p7

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 118
    .local v16, "mimeTypeC":I
    move-object/from16 v0, p9

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 119
    .local v18, "pathC":I
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 121
    .local v4, "id":J
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 122
    .local v19, "size":Ljava/lang/String;
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 123
    .local v9, "dateTaken":J
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "mimeType":Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->allowToAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    new-instance v3, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v8, p8

    .line 126
    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;J)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v4    # "id":J
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v9    # "dateTaken":J
    .end local v13    # "dateTakenC":I
    .end local v15    # "idC":I
    .end local v16    # "mimeTypeC":I
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "pathC":I
    .end local v19    # "size":Ljava/lang/String;
    .end local v20    # "sizeC":I
    :catch_0
    move-exception v14

    .line 132
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v3, "Illegal argument when getting column"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 137
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-object v12

    .line 134
    .restart local v13    # "dateTakenC":I
    .restart local v15    # "idC":I
    .restart local v16    # "mimeTypeC":I
    .restart local v18    # "pathC":I
    .restart local v20    # "sizeC":I
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 133
    .end local v13    # "dateTakenC":I
    .end local v15    # "idC":I
    .end local v16    # "mimeTypeC":I
    .end local v18    # "pathC":I
    .end local v20    # "sizeC":I
    :catchall_0
    move-exception v3

    .line 134
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 133
    throw v3
.end method

.method private queryImages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "datetaken"

    .line 100
    const-string/jumbo v4, "_id"

    const-string/jumbo v5, "_size"

    const-string/jumbo v6, "datetaken"

    .line 101
    const-string/jumbo v7, "mime_type"

    sget-object v8, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->IMAGE:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    const-string/jumbo v9, "_data"

    move-object v0, p0

    .line 99
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private queryVideos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->VIDEO_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "datetaken"

    .line 94
    const-string/jumbo v4, "_id"

    const-string/jumbo v5, "_size"

    const-string/jumbo v6, "datetaken"

    .line 95
    const-string/jumbo v7, "mime_type"

    sget-object v8, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    const-string/jumbo v9, "_data"

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->mObserverRegistered:Z

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->forceLoadContentObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 168
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->forceLoadContentObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 170
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->mObserverRegistered:Z

    .line 164
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->mObserverRegistered:Z

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->forceLoadContentObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Ljava/util/List;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 151
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->queryImages()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->queryVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    new-instance v1, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader$1;-><init>(Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    return-object v0
.end method

.method public onAbandon()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onAbandon()V

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->unregisterContentObserver()V

    .line 74
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->onStopLoading()V

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->unregisterContentObserver()V

    .line 67
    return-void
.end method

.method public onStartLoading()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->forceLoad()V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->registerContentObserver()V

    .line 54
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryMediaStoreLoader;->cancelLoad()Z

    .line 62
    return-void
.end method
