.class Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;
.super Landroid/os/AsyncTask;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStickersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/sonyericsson/conversations/stickers/SketchStickerPack;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)V

    return-void
.end method

.method private getStickerList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "packId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v12, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    sget-object v1, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 164
    .local v2, "stickersUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/provider/SketchContract;->stickersCols()[Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "selectedCols":[Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v7, 0x0

    .local v7, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 166
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 184
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    throw v13

    :catch_0
    move-exception v13

    goto :goto_0

    .line 167
    :cond_1
    return-object v12

    .line 170
    :cond_2
    :try_start_2
    const-string/jumbo v1, "package_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 171
    .local v9, "packageId":I
    const-string/jumbo v1, "sticker_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 172
    .local v11, "stickerId":I
    const-string/jumbo v1, "content_url"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 173
    .local v8, "contentUrl":I
    const-string/jumbo v1, "preview_url"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 174
    .local v10, "previewUrl":I
    if-ltz v9, :cond_3

    if-gez v11, :cond_5

    .line 175
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Negative column value when loading stickers for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_1
    if-eqz v13, :cond_7

    throw v13

    .line 174
    :cond_5
    if-ltz v8, :cond_3

    if-ltz v10, :cond_3

    .line 179
    :goto_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 180
    new-instance v1, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 180
    invoke-direct {v1, v4, v5, v6, v14}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 184
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contentUrl":I
    .end local v9    # "packageId":I
    .end local v10    # "previewUrl":I
    .end local v11    # "stickerId":I
    :catch_1
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v1

    move-object v1, v15

    :goto_3
    if-eqz v7, :cond_6

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_4
    if-eqz v4, :cond_b

    throw v4

    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "contentUrl":I
    .restart local v9    # "packageId":I
    .restart local v10    # "previewUrl":I
    .restart local v11    # "stickerId":I
    :catch_2
    move-exception v13

    goto :goto_1

    .line 176
    :cond_7
    return-object v12

    .line 184
    :cond_8
    if-eqz v7, :cond_9

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_5
    if-eqz v13, :cond_c

    throw v13

    :catch_3
    move-exception v13

    goto :goto_5

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contentUrl":I
    .end local v9    # "packageId":I
    .end local v10    # "previewUrl":I
    .end local v11    # "stickerId":I
    :catch_4
    move-exception v5

    if-nez v4, :cond_a

    move-object v4, v5

    goto :goto_4

    :cond_a
    if-eq v4, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    throw v1

    .line 185
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "contentUrl":I
    .restart local v9    # "packageId":I
    .restart local v10    # "previewUrl":I
    .restart local v11    # "stickerId":I
    :cond_c
    return-object v12

    .line 184
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contentUrl":I
    .end local v9    # "packageId":I
    .end local v10    # "previewUrl":I
    .end local v11    # "stickerId":I
    :catchall_1
    move-exception v1

    move-object v4, v13

    goto :goto_3
.end method

.method private reReadRecents(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    monitor-enter v7

    .line 192
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-get1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 194
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->getRecentStickersJsonString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "recentsJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v7

    .line 197
    return-void

    .line 200
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 201
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v6, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask$1;-><init>(Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;)V

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 203
    .local v5, "t":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 205
    .local v2, "recentsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    if-nez v2, :cond_2

    .line 206
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_1

    .line 207
    const-string/jumbo v6, "Could not parse recent sticker list"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v7

    .line 209
    return-void

    .line 211
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sticker$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    .line 212
    .local v3, "sticker":Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;
    iget-object v6, v3, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->packageId:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-get1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "recentsJson":Ljava/lang/String;
    .end local v2    # "recentsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    .end local v3    # "sticker":Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;
    .end local v4    # "sticker$iterator":Ljava/util/Iterator;
    .end local v5    # "t":Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 216
    .restart local v0    # "gson":Lcom/google/gson/Gson;
    .restart local v1    # "recentsJson":Ljava/lang/String;
    .restart local v2    # "recentsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;>;"
    .restart local v4    # "sticker$iterator":Ljava/util/Iterator;
    .restart local v5    # "t":Ljava/lang/reflect/Type;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v6

    .line 217
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-get1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-virtual {v6, v8}, Lcom/sonyericsson/conversations/settings/SettingsManager;->saveRecentStickersJsonArray(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 188
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "resolvers"    # [Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1    # "resolvers":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 26
    .param p1, "resolvers"    # [Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v4, 0x0

    aget-object v1, p1, v4

    .line 112
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/sonyericsson/conversations/provider/SketchContract;->PACKAGES:Landroid/net/Uri;

    .line 113
    .local v2, "listPackagesUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/provider/SketchContract;->packageCols()[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "selectedCols":[Ljava/lang/String;
    const/16 v24, 0x0

    const/4 v12, 0x0

    .local v12, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 115
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 116
    const/4 v4, 0x0

    .line 156
    if-eqz v12, :cond_0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v24, :cond_1

    :try_start_2
    throw v24
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v12    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 155
    .local v13, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    return-object v4

    .line 156
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v24

    goto :goto_0

    .line 116
    :cond_1
    return-object v4

    .line 119
    :cond_2
    :try_start_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v22, "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v15, "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "package_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 123
    .local v20, "packageId":I
    const-string/jumbo v4, "name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 124
    .local v16, "name":I
    const-string/jumbo v4, "icon_url"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 125
    .local v14, "iconUrl":I
    const-string/jumbo v4, "icon_small_url"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 126
    .local v21, "smallIconUrl":I
    const-string/jumbo v4, "type"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 127
    .local v23, "type":I
    const-string/jumbo v4, "order_index"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 128
    .local v17, "order":I
    if-ltz v20, :cond_3

    if-gez v16, :cond_5

    .line 130
    :cond_3
    const-string/jumbo v4, "Negative column value when trying to load sticker packs, aborting"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    const/4 v4, 0x0

    .line 156
    if-eqz v12, :cond_4

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_1
    if-eqz v24, :cond_8

    :try_start_5
    throw v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 128
    :cond_5
    if-ltz v14, :cond_3

    if-ltz v21, :cond_3

    if-ltz v23, :cond_3

    .line 129
    if-ltz v17, :cond_3

    .line 134
    :cond_6
    :goto_2
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 135
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "packId":Ljava/lang/String;
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "typeString":Ljava/lang/String;
    const-string/jumbo v4, "image/x-somc-sticker-large"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v4, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    .line 142
    invoke-direct/range {v4 .. v11}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 141
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 156
    .end local v5    # "packId":Ljava/lang/String;
    .end local v9    # "typeString":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "iconUrl":I
    .end local v15    # "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "name":I
    .end local v17    # "order":I
    .end local v20    # "packageId":I
    .end local v21    # "smallIconUrl":I
    .end local v22    # "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    .end local v23    # "type":I
    :catch_2
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object/from16 v25, v6

    move-object v6, v4

    move-object/from16 v4, v25

    :goto_3
    if-eqz v12, :cond_7

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    :goto_4
    if-eqz v6, :cond_e

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "iconUrl":I
    .restart local v15    # "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "name":I
    .restart local v17    # "order":I
    .restart local v20    # "packageId":I
    .restart local v21    # "smallIconUrl":I
    .restart local v22    # "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    .restart local v23    # "type":I
    :catch_3
    move-exception v24

    goto :goto_1

    .line 131
    :cond_8
    return-object v4

    .line 147
    :cond_9
    :try_start_a
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "pack$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;

    .line 148
    .local v18, "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->packageId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->getStickerList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack;->stickers:Ljava/util/List;

    goto :goto_5

    .line 156
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "iconUrl":I
    .end local v15    # "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "name":I
    .end local v17    # "order":I
    .end local v18    # "pack":Lcom/sonyericsson/conversations/stickers/SketchStickerPack;
    .end local v19    # "pack$iterator":Ljava/util/Iterator;
    .end local v20    # "packageId":I
    .end local v21    # "smallIconUrl":I
    .end local v22    # "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    .end local v23    # "type":I
    :catchall_1
    move-exception v4

    move-object/from16 v6, v24

    goto :goto_3

    .line 151
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "iconUrl":I
    .restart local v15    # "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "name":I
    .restart local v17    # "order":I
    .restart local v19    # "pack$iterator":Ljava/util/Iterator;
    .restart local v20    # "packageId":I
    .restart local v21    # "smallIconUrl":I
    .restart local v22    # "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    .restart local v23    # "type":I
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->reReadRecents(Ljava/util/Set;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 156
    if-eqz v12, :cond_b

    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_b
    :goto_6
    if-eqz v24, :cond_c

    :try_start_c
    throw v24

    :catch_4
    move-exception v24

    goto :goto_6

    .line 153
    :cond_c
    return-object v22

    .line 156
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v14    # "iconUrl":I
    .end local v15    # "loadedPacks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "name":I
    .end local v17    # "order":I
    .end local v19    # "pack$iterator":Ljava/util/Iterator;
    .end local v20    # "packageId":I
    .end local v21    # "smallIconUrl":I
    .end local v22    # "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    .end local v23    # "type":I
    :catch_5
    move-exception v7

    if-nez v6, :cond_d

    move-object v6, v7

    goto :goto_4

    :cond_d
    if-eq v6, v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_e
    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "stickerPacks"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Ljava/util/List;

    .end local p1    # "stickerPacks":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/stickers/SketchStickerPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "stickerPacks":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/stickers/SketchStickerPack;>;"
    if-nez p1, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-get0(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/stickers/StickerManager$LoadStickersTask;->this$0:Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->-wrap1(Lcom/sonyericsson/conversations/ui/stickers/StickerManager;)V

    .line 222
    return-void
.end method
