.class public Lcom/sonyericsson/conversations/draft/DraftsManager;
.super Ljava/lang/Object;
.source "DraftsManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/draft/DraftsApi;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

.field private mDraftsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/draft/DraftsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifyDraftLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/persistence/DatabaseHelper;)V
    .locals 1
    .param p1, "databaseHelper"    # Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDraftsListeners:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mModifyDraftLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    .line 40
    return-void
.end method

.method private deleteFromDraftParticipantTable(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonyericsson/conversations/model/Participant;)J
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .param p4, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "draft_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string/jumbo v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v2, "participant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string/jumbo v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 435
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 437
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "draft_participants"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method private deleteFromDraftUriTable(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)J
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "draft_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 411
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 413
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "draft_uris"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method private fireOnDraftDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 380
    iget-object v2, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDraftsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/draft/DraftsListener;

    .line 381
    .local v0, "listener":Lcom/sonyericsson/conversations/draft/DraftsListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/draft/DraftsListener;->onDraftDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0

    .line 379
    .end local v0    # "listener":Lcom/sonyericsson/conversations/draft/DraftsListener;
    :cond_0
    return-void
.end method

.method private fireOnDraftSaved(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 374
    iget-object v2, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDraftsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/draft/DraftsListener;

    .line 375
    .local v0, "listener":Lcom/sonyericsson/conversations/draft/DraftsListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/draft/DraftsListener;->onDraftSaved(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0

    .line 373
    .end local v0    # "listener":Lcom/sonyericsson/conversations/draft/DraftsListener;
    :cond_0
    return-void
.end method

.method private getDraft(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/draft/Draft;
    .locals 18
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 338
    const-string/jumbo v3, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 339
    .local v14, "draftIdColumnIdx":I
    const-string/jumbo v3, "subject"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 340
    .local v16, "subjectColumnIdx":I
    const-string/jumbo v3, "bodytext"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 341
    .local v11, "bodyTextColumnIdx":I
    const-string/jumbo v3, "timestamp"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 342
    .local v17, "timestampColumnIdx":I
    const-string/jumbo v3, "priority"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 343
    .local v15, "priorityColumnIdx":I
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 344
    .local v12, "draftId":J
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "subject":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "bodyText":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 347
    .local v8, "timestamp":J
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 348
    .local v10, "priority":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getUrisFromDraft(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v7

    .line 349
    .local v7, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getParticipantsFromDraft(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v6

    .line 351
    .local v6, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v2, Lcom/sonyericsson/conversations/draft/Draft;

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/conversations/draft/Draft;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JI)V

    .line 353
    .local v2, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    invoke-virtual {v2, v12, v13}, Lcom/sonyericsson/conversations/draft/Draft;->setId(J)V

    .line 354
    return-object v2
.end method

.method private getParticipantsFromDraft(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 14
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 471
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 474
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v12, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "draft_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v0, "=?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/4 v9, 0x0

    .line 479
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v11, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :try_start_0
    const-string/jumbo v1, "draft_participants"

    .line 482
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    const/4 v2, 0x0

    .line 482
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 481
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 484
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    const-string/jumbo v0, "participant"

    .line 485
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 487
    .local v10, "recipientIdx":I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, "address":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, v8}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 490
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "recipientIdx":I
    :catchall_0
    move-exception v0

    .line 491
    if-eqz v9, :cond_0

    .line 492
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_0
    throw v0

    .line 491
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v9, :cond_2

    .line 492
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_2
    return-object v11
.end method

.method private getUrisFromDraft(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 14
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v9, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "draft_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string/jumbo v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 447
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 450
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 451
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v12, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    const-string/jumbo v1, "draft_uris"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    .line 454
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 453
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 456
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const-string/jumbo v0, "uri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 458
    .local v11, "uriIdx":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 459
    .local v10, "uri":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 461
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "uriIdx":I
    :catchall_0
    move-exception v0

    .line 462
    if-eqz v8, :cond_0

    .line 463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_0
    throw v0

    .line 462
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v8, :cond_2

    .line 463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_2
    return-object v12
.end method

.method private insertIntoDraftParticipantTable(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonyericsson/conversations/model/Participant;)J
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .param p4, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 419
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 420
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "draft_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string/jumbo v1, "participant"

    .line 422
    invoke-virtual {p4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v1, "draft_participants"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertIntoDraftTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;JI)J
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "priority"    # I

    .prologue
    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "conversation_id"

    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "bodytext"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "timestamp"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string/jumbo v1, "priority"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string/jumbo v1, "drafts"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertIntoDraftUriTable(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)J
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "draftId"    # J
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "draft_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string/jumbo v1, "uri"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v1, "draft_uris"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private isDraftDuplicate(Lcom/sonyericsson/conversations/draft/Draft;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z
    .locals 2
    .param p1, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/draft/Draft;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local p5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .line 73
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    :cond_1
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    return v1

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    :cond_4
    return v1

    .line 78
    :cond_5
    return v1

    .line 80
    :cond_6
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    :cond_7
    return v1

    .line 86
    :cond_8
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/draft/Draft;->getPriority()I

    move-result v0

    if-eq p6, v0, :cond_9

    .line 87
    return v1

    .line 89
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private saveDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JI)J
    .locals 18
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/String;
    .param p6, "timeStamp"    # J
    .param p8, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;JI)J"
        }
    .end annotation

    .prologue
    .line 94
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local p5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-boolean v3, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 95
    const-string/jumbo v3, "conversationId \'"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, "\' subject \'"

    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 96
    const-string/jumbo v5, "\' bodyText \'"

    .line 95
    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 96
    const-string/jumbo v5, "\' priority \'"

    .line 95
    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 97
    const-string/jumbo v5, "\'"

    .line 95
    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    .line 98
    .local v2, "log":Lcom/sonymobile/conversations/util/LogUtil;
    const-string/jumbo v3, " participants: "

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    .line 99
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/conversations/model/Participant;

    .line 100
    .local v11, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_0

    .line 102
    .end local v11    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    const-string/jumbo v3, " uris: "

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    .line 103
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 104
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_1

    .line 106
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 109
    .end local v2    # "log":Lcom/sonymobile/conversations/util/LogUtil;
    .end local v14    # "participant$iterator":Ljava/util/Iterator;
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 110
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 111
    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/conversations/draft/DraftsManager;->insertIntoDraftTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;JI)J

    move-result-wide v12

    .line 114
    .local v12, "draftId":J
    if-eqz p5, :cond_3

    .line 115
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "uri$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 116
    .restart local v15    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13, v15}, Lcom/sonyericsson/conversations/draft/DraftsManager;->insertIntoDraftUriTable(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)J

    goto :goto_2

    .line 120
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uri$iterator":Ljava/util/Iterator;
    :cond_3
    if-eqz p4, :cond_4

    .line 121
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "participant$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/conversations/model/Participant;

    .line 122
    .restart local v11    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13, v11}, Lcom/sonyericsson/conversations/draft/DraftsManager;->insertIntoDraftParticipantTable(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonyericsson/conversations/model/Participant;)J

    goto :goto_3

    .line 125
    .end local v11    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v14    # "participant$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 126
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 127
    return-wide v12
.end method

.method private updateDraft(Lcom/sonyericsson/conversations/draft/Draft;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)J
    .locals 26
    .param p1, "oldDraft"    # Lcom/sonyericsson/conversations/draft/Draft;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "updatedSubject"    # Ljava/lang/String;
    .param p4, "updatedBodyText"    # Ljava/lang/String;
    .param p7, "updatedPriority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/draft/Draft;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 133
    .local p5, "updatedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local p6, "updatedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/draft/Draft;->getId()J

    move-result-wide v6

    .line 134
    .local v6, "oldDraftId":J
    sget-boolean v23, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v23, :cond_2

    .line 135
    const-string/jumbo v23, "draftId "

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(J)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, " conversationId \'"

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    .line 136
    const-string/jumbo v24, "\' "

    .line 135
    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    .line 136
    const-string/jumbo v24, "\' subject \'"

    .line 135
    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    .line 137
    const-string/jumbo v24, "\' bodyText \'"

    .line 135
    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    .line 137
    const-string/jumbo v24, "\' priority \'"

    .line 135
    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    .line 138
    const-string/jumbo v24, "\'"

    .line 135
    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    .line 139
    .local v5, "log":Lcom/sonymobile/conversations/util/LogUtil;
    const-string/jumbo v23, " participants: "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    .line 140
    if-eqz p5, :cond_0

    .line 141
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/conversations/model/Participant;

    .line 142
    .local v12, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v12}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, ", "

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_0

    .line 145
    .end local v12    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v13    # "participant$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v23, " uris: "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    .line 146
    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 147
    .local v20, "uri":Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, ", "

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_1

    .line 149
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v5}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 152
    .end local v5    # "log":Lcom/sonymobile/conversations/util/LogUtil;
    .end local v21    # "uri$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 154
    .local v4, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v23, "subject"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v23, "bodytext"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v23, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string/jumbo v23, "priority"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v14, "_id=?"

    .line 165
    .local v14, "selection":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    .line 166
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v15, v24

    .line 169
    .local v15, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v23, "drafts"

    const-string/jumbo v24, "_id=?"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "oldUri$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 174
    .local v10, "oldUri":Landroid/net/Uri;
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 175
    sget-boolean v23, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v23, :cond_4

    .line 176
    const-string/jumbo v23, "Delete old uri \'"

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, "\'"

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 178
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v10}, Lcom/sonyericsson/conversations/draft/DraftsManager;->deleteFromDraftUriTable(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 213
    .end local v10    # "oldUri":Landroid/net/Uri;
    .end local v11    # "oldUri$iterator":Ljava/util/Iterator;
    .end local v14    # "selection":Ljava/lang/String;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v23

    .line 214
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    throw v23

    .line 182
    .restart local v11    # "oldUri$iterator":Ljava/util/Iterator;
    .restart local v14    # "selection":Ljava/lang/String;
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "updatedUri$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 183
    .local v18, "updatedUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 184
    sget-boolean v23, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v23, :cond_7

    .line 185
    const-string/jumbo v23, "Add new uri \'"

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, "\'"

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 187
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->insertIntoDraftUriTable(Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)J

    goto :goto_3

    .line 190
    .end local v18    # "updatedUri":Landroid/net/Uri;
    :cond_8
    if-eqz p5, :cond_e

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "oldParticipant$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/model/Participant;

    .line 193
    .local v8, "oldParticipant":Lcom/sonyericsson/conversations/model/Participant;
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 194
    sget-boolean v23, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v23, :cond_a

    .line 195
    const-string/jumbo v23, "Delete old participant \'"

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, "\'"

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 198
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v8}, Lcom/sonyericsson/conversations/draft/DraftsManager;->deleteFromDraftParticipantTable(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonyericsson/conversations/model/Participant;)J

    goto :goto_4

    .line 202
    .end local v8    # "oldParticipant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_b
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "updatedParticipant$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/conversations/model/Participant;

    .line 203
    .local v16, "updatedParticipant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 204
    sget-boolean v23, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v23, :cond_d

    .line 205
    const-string/jumbo v23, "Added new participant \'"

    invoke-static/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    const-string/jumbo v24, "\'"

    invoke-virtual/range {v23 .. v24}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 208
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->insertIntoDraftParticipantTable(Landroid/database/sqlite/SQLiteDatabase;JLcom/sonyericsson/conversations/model/Participant;)J

    goto :goto_5

    .line 212
    .end local v9    # "oldParticipant$iterator":Ljava/util/Iterator;
    .end local v16    # "updatedParticipant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v17    # "updatedParticipant$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 216
    return-wide v6
.end method


# virtual methods
.method public deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 9
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 254
    sget-boolean v6, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 255
    const-string/jumbo v6, "\'conversationId \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "\'"

    .line 255
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 258
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mModifyDraftLock:Ljava/lang/Object;

    monitor-enter v7

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v1

    .line 260
    .local v1, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    if-nez v1, :cond_2

    .line 261
    sget-boolean v6, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 262
    const-string/jumbo v6, "No draft stored related to \'conversationId \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 263
    const-string/jumbo v8, "\'"

    .line 262
    invoke-virtual {v6, v8}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v7

    .line 265
    return-void

    .line 267
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/draft/Draft;->getId()J

    move-result-wide v2

    .line 268
    .local v2, "draftId":J
    const-string/jumbo v4, "_id=?"

    .line 270
    .local v4, "selection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 271
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 274
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v6, "drafts"

    const-string/jumbo v8, "_id=?"

    invoke-virtual {v0, v6, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 277
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->fireOnDraftDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 253
    return-void

    .line 258
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    .end local v2    # "draftId":J
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public deleteDrafts(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 6
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 282
    sget-boolean v3, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 283
    const-string/jumbo v3, "conversationId \'"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 285
    :cond_0
    const-string/jumbo v1, "conversation_id=?"

    .line 288
    .local v1, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 289
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 292
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 293
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mModifyDraftLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    :try_start_0
    const-string/jumbo v3, "drafts"

    const-string/jumbo v5, "conversation_id=?"

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 296
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->fireOnDraftDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 281
    return-void

    .line 293
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getAllDrafts()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/draft/Draft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v11, 0x0

    .line 222
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 223
    .local v13, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 226
    const-string/jumbo v1, "drafts"

    .line 227
    const-string/jumbo v7, "timestamp DESC"

    .line 226
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .local v11, "cursor":Landroid/database/Cursor;
    move-object v14, v13

    .line 228
    .end local v13    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .local v14, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string/jumbo v1, "conversation_id"

    .line 229
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 231
    .local v9, "conversationIdColumnIdx":I
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "conversationIdKey":Ljava/lang/String;
    invoke-static {v10}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromKeyOnly(Ljava/lang/String;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v8

    .line 235
    .local v8, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-direct {p0, v0, v8, v11}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getDraft(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v12

    .line 237
    .local v12, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    if-nez v14, :cond_3

    .line 238
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .local v13, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    :goto_1
    :try_start_2
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v13

    .end local v13    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .restart local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    goto :goto_0

    .line 242
    .end local v8    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v9    # "conversationIdColumnIdx":I
    .end local v10    # "conversationIdKey":Ljava/lang/String;
    .end local v12    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 244
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 245
    if-eqz v11, :cond_1

    .line 246
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_1
    return-object v14

    .line 243
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    :catchall_0
    move-exception v1

    .line 244
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 245
    if-eqz v11, :cond_2

    .line 246
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_2
    throw v1

    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .restart local v13    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    goto :goto_2

    .end local v13    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .restart local v8    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .restart local v9    # "conversationIdColumnIdx":I
    .restart local v10    # "conversationIdKey":Ljava/lang/String;
    .restart local v12    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    .restart local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    :cond_3
    move-object v13, v14

    .end local v14    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    .restart local v13    # "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    goto :goto_1
.end method

.method public getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;
    .locals 11
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 301
    sget-boolean v1, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 302
    const-string/jumbo v1, "conversationId \'"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 304
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v10, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v1, "=?"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDatabaseHelper:Lcom/sonyericsson/conversations/persistence/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/persistence/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 310
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 313
    .local v9, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 315
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 316
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 319
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "drafts"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    const-string/jumbo v7, "timestamp DESC LIMIT 1"

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 319
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 324
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-direct {p0, v0, p1, v8}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getDraft(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v9

    .line 327
    .end local v9    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    if-eqz v8, :cond_2

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    return-object v9

    .line 328
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 329
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    if-eqz v8, :cond_3

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_3
    throw v1
.end method

.method public registerListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/draft/DraftsListener;

    .prologue
    .line 359
    sget-boolean v0, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "listener \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDraftsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method public saveDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)J
    .locals 12
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "bodyText"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/draft/DuplicateDraftException;
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local p5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v9, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mModifyDraftLock:Ljava/lang/Object;

    monitor-enter v9

    .line 50
    :try_start_0
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "one2one:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 54
    const-wide/16 v2, -0x1

    .line 53
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdOnly(J)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object p1

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v1

    .line 57
    .local v1, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    if-nez v1, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    .line 58
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/conversations/draft/DraftsManager;->saveDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    move-result-wide v10

    .local v10, "draftId":J
    :goto_0
    monitor-exit v9

    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/draft/DraftsManager;->fireOnDraftSaved(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 68
    return-wide v10

    .end local v10    # "draftId":J
    .restart local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 60
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/draft/DraftsManager;->isDraftDuplicate(Lcom/sonyericsson/conversations/draft/Draft;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/sonyericsson/conversations/draft/DuplicateDraftException;

    const-string/jumbo v2, "Draft is already stored in database"

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/draft/DuplicateDraftException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .end local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .restart local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 63
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/draft/DraftsManager;->updateDraft(Lcom/sonyericsson/conversations/draft/Draft;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    .restart local v10    # "draftId":J
    goto :goto_0
.end method

.method public unregisterListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/conversations/draft/DraftsListener;

    .prologue
    .line 367
    sget-boolean v0, Lcom/sonyericsson/conversations/draft/DraftsManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "listener \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/draft/DraftsManager;->mDraftsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method
