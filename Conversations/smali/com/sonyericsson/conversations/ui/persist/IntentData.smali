.class public Lcom/sonyericsson/conversations/ui/persist/IntentData;
.super Ljava/lang/Object;
.source "IntentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field public final conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field public final focusMessageUri:Landroid/net/Uri;

.field public final sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->DEBUG:Z

    .line 33
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p3, "focusMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 166
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .line 167
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->focusMessageUri:Landroid/net/Uri;

    .line 164
    return-void
.end method

.method private static extractSendToData(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Ljava/util/List;
    .locals 17
    .param p0, "intentUri"    # Landroid/net/Uri;
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 476
    .local v12, "uriString":Ljava/lang/String;
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "ssp":Ljava/lang/String;
    const/16 v13, 0x3f

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 481
    .local v1, "firstQueryPos":I
    if-ltz v1, :cond_2

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 486
    .local v8, "recipientList":Ljava/lang/String;
    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "queryString":Ljava/lang/String;
    const-string/jumbo v13, "&"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "queryParams":[Ljava/lang/String;
    const/4 v13, 0x0

    array-length v14, v5

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v4, v5, v13

    .line 490
    .local v4, "queryParam":Ljava/lang/String;
    const-string/jumbo v15, "="

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "paramKeyValue":[Ljava/lang/String;
    array-length v15, v2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 493
    const/4 v15, 0x0

    aget-object v15, v2, v15

    const-string/jumbo v16, "subject"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 497
    const/4 v15, 0x1

    aget-object v15, v2, v15

    invoke-static {v15}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    .line 489
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 498
    :cond_1
    const/4 v15, 0x0

    aget-object v15, v2, v15

    const-string/jumbo v16, "body"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 501
    const/4 v15, 0x1

    aget-object v15, v2, v15

    invoke-static {v15}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    goto :goto_1

    .line 506
    .end local v2    # "paramKeyValue":[Ljava/lang/String;
    .end local v4    # "queryParam":Ljava/lang/String;
    .end local v5    # "queryParams":[Ljava/lang/String;
    .end local v6    # "queryString":Ljava/lang/String;
    .end local v8    # "recipientList":Ljava/lang/String;
    :cond_2
    move-object v8, v10

    .line 509
    .restart local v8    # "recipientList":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 511
    const-string/jumbo v13, "[,;]"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 512
    .local v9, "recipients":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v13, v9

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v13, 0x0

    array-length v14, v9

    :goto_2
    if-ge v13, v14, :cond_5

    aget-object v7, v9, v13

    .line 515
    .local v7, "recipient":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, "trimmed":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 517
    new-instance v15, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v15, v11}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 521
    .end local v7    # "recipient":Ljava/lang/String;
    .end local v11    # "trimmed":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private static getConversation(Landroid/content/Intent;Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "conversationManager"    # Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .prologue
    .line 390
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string/jumbo v1, "conversation_id"

    .line 391
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 393
    .local v0, "convId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 395
    .end local v0    # "convId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEmailFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "uriString":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getParticipantsFromDirectShare(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string/jumbo v2, "person_number"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string/jumbo v2, "person_number"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "personNumber":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v0    # "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v1    # "personNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getParticipantsFromUriAndSetType(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    const/4 v13, 0x0

    .line 430
    .local v13, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v8, 0x0

    .line 433
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 434
    const-string/jumbo v4, "data1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "mimetype"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 435
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 433
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 436
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string/jumbo v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 438
    .local v11, "numberColIndex":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 439
    .local v10, "number":Ljava/lang/String;
    const-string/jumbo v1, "mimetype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 440
    .local v15, "typeColIndex":I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    new-instance v12, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v12, v10}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 442
    .local v12, "participant":Lcom/sonyericsson/conversations/model/Participant;
    new-instance v14, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .local v14, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :try_start_1
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v13    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    move-object v13, v14

    .line 451
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "numberColIndex":I
    .end local v12    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v14    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v15    # "typeColIndex":I
    :cond_0
    if-eqz v8, :cond_1

    .line 452
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 455
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v13

    .line 445
    .restart local v13    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :catch_0
    move-exception v9

    .line 446
    .end local v13    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/sonyericsson/conversations/ui/persist/IntentData;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 447
    const-string/jumbo v1, "Failed to get number from contact Uri "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :cond_2
    if-eqz v8, :cond_1

    .line 452
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 450
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    .line 451
    :goto_2
    if-eqz v8, :cond_3

    .line 452
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_3
    throw v1

    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "number":Ljava/lang/String;
    .restart local v11    # "numberColIndex":I
    .restart local v12    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .restart local v14    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v15    # "typeColIndex":I
    :catchall_1
    move-exception v1

    move-object v13, v14

    .end local v14    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .local v13, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto :goto_2

    .line 445
    .end local v13    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v14    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :catch_1
    move-exception v9

    .restart local v9    # "e":Landroid/database/sqlite/SQLiteException;
    move-object v13, v14

    .end local v14    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v13    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto :goto_1
.end method

.method public static isLauncherIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMmsScheme(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mmsto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string/jumbo v0, "mailto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isXmsScheme(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isXmsToScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXmsToScheme(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string/jumbo v0, "smsto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mmsto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    const-string/jumbo v0, "mailto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/conversations/ui/persist/IntentData;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 190
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    const/4 v11, 0x0

    .line 191
    .local v11, "focusMessageUri":Landroid/net/Uri;
    new-instance v19, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-direct/range {v19 .. v19}, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;-><init>()V

    .line 192
    .local v19, "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    const/4 v12, 0x0

    .line 193
    .local v12, "hasSendIntentData":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v7

    .line 196
    .local v7, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 198
    const-wide/16 v28, -0x1

    .line 197
    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .line 199
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    new-instance v27, Lcom/sonyericsson/conversations/ui/persist/IntentData;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v6, v1, v2}, Lcom/sonyericsson/conversations/ui/persist/IntentData;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V

    return-object v27

    .line 202
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_0
    const/16 v17, 0x0

    .line 204
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string/jumbo v27, "android.intent.action.SENDTO"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    const-string/jumbo v27, "android.intent.action.VIEW"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 205
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getConversation(Landroid/content/Intent;Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .line 207
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    const-string/jumbo v27, "sms_body"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 209
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 210
    const-string/jumbo v27, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 213
    :cond_2
    const-string/jumbo v27, "person_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    if-eqz v27, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    .line 215
    const-string/jumbo v28, "mailto"

    .line 214
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    .line 213
    if-eqz v27, :cond_3

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getEmailFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 219
    :cond_3
    const-string/jumbo v27, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 220
    .local v24, "uri":Landroid/net/Uri;
    if-eqz v24, :cond_4

    .line 221
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 229
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 231
    .local v14, "intentUri":Landroid/net/Uri;
    if-eqz v14, :cond_d

    .line 232
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 234
    .local v18, "scheme":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isXmsScheme(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 239
    const/4 v12, 0x1

    .line 241
    const-string/jumbo v27, "person_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 242
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getParticipantsFromDirectShare(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v17

    .line 248
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :goto_1
    const-string/jumbo v27, "reply_all_msg_uri"

    .line 247
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 249
    .local v16, "p":Landroid/os/Parcelable;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v27, v0

    if-eqz v27, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isMmsScheme(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 250
    sget-object v27, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 251
    check-cast v16, Landroid/net/Uri;

    .end local v16    # "p":Landroid/os/Parcelable;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 311
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v14    # "intentUri":Landroid/net/Uri;
    .end local v17    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v18    # "scheme":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_2
    if-eqz v17, :cond_6

    .line 312
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    .line 313
    .local v20, "size":I
    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 315
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual/range {v27 .. v27}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v27

    .line 314
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getThreadIdFromOne2OneParticipantAddress(Ljava/lang/String;)J

    move-result-wide v22

    .line 316
    .local v22, "threadId":J
    const-wide/16 v28, -0x1

    cmp-long v27, v22, v28

    if-nez v27, :cond_16

    .line 317
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createConversationFromParticipants(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .line 330
    .end local v20    # "size":I
    .end local v22    # "threadId":J
    :cond_6
    :goto_3
    if-nez v6, :cond_9

    .line 332
    const-string/jumbo v27, "thread_id"

    const-wide/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 334
    .restart local v22    # "threadId":J
    const-wide/16 v28, -0x1

    cmp-long v27, v22, v28

    if-nez v27, :cond_7

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 338
    .local v8, "conversationUri":Landroid/net/Uri;
    if-eqz v8, :cond_7

    .line 339
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    .line 340
    sget-object v28, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    .line 339
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    .line 338
    if-eqz v27, :cond_7

    .line 342
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 350
    .end local v8    # "conversationUri":Landroid/net/Uri;
    :cond_7
    :goto_4
    const-string/jumbo v27, "chatID"

    .line 349
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 353
    .local v13, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const-wide/16 v28, -0x1

    cmp-long v27, v22, v28

    if-eqz v27, :cond_18

    .line 354
    sget-object v27, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    move-object/from16 v0, v27

    if-eq v13, v0, :cond_18

    .line 357
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v27

    .line 356
    move-wide/from16 v0, v22

    move-object/from16 v2, v27

    invoke-virtual {v7, v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .line 372
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 376
    const-string/jumbo v27, "view_msg_uri"

    .line 375
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    .line 378
    .local v26, "viewMsgExtra":Landroid/os/Parcelable;
    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move-object/from16 v11, v26

    .line 379
    check-cast v11, Landroid/net/Uri;

    .line 384
    .end local v11    # "focusMessageUri":Landroid/net/Uri;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v22    # "threadId":J
    .end local v26    # "viewMsgExtra":Landroid/os/Parcelable;
    :cond_9
    new-instance v27, Lcom/sonyericsson/conversations/ui/persist/IntentData;

    if-eqz v12, :cond_1b

    .end local v19    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    :goto_6
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1, v11}, Lcom/sonyericsson/conversations/ui/persist/IntentData;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V

    return-object v27

    .line 226
    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .restart local v11    # "focusMessageUri":Landroid/net/Uri;
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v19    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .restart local v24    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 244
    .restart local v14    # "intentUri":Landroid/net/Uri;
    .restart local v18    # "scheme":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->extractSendToData(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Ljava/util/List;

    move-result-object v17

    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto/16 :goto_1

    .line 253
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_c
    const-string/jumbo v27, "content"

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 254
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    .line 253
    if-eqz v27, :cond_5

    .line 255
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getParticipantsFromUriAndSetType(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v17

    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto/16 :goto_2

    .line 261
    .end local v18    # "scheme":Ljava/lang/String;
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_d
    const-string/jumbo v27, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "addressList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 263
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string/jumbo v27, ";"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v27, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    aget-object v15, v28, v27

    .line 266
    .local v15, "number":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 267
    new-instance v30, Lcom/sonyericsson/conversations/model/Participant;

    move-object/from16 v0, v30

    invoke-direct {v0, v15}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_e
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 272
    .end local v5    # "addressList":Ljava/lang/String;
    .end local v14    # "intentUri":Landroid/net/Uri;
    .end local v15    # "number":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_f
    const-string/jumbo v27, "android.intent.action.SEND"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 273
    const/4 v12, 0x1

    .line 276
    const-string/jumbo v27, "msg_uri"

    .line 275
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 278
    const-string/jumbo v27, "source_thread_id"

    const-wide/16 v28, -0x1

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardThreadid:J

    .line 279
    const-string/jumbo v27, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 280
    const-string/jumbo v27, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 281
    const-string/jumbo v27, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 282
    .local v10, "extraStream":Landroid/net/Uri;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v10    # "extraStream":Landroid/net/Uri;
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getParticipantsFromDirectShare(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v17

    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto/16 :goto_2

    .line 287
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_11
    const-string/jumbo v27, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 288
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getConversation(Landroid/content/Intent;Lcom/sonyericsson/conversations/conversation/ConversationManager;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .line 289
    .local v6, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    const/4 v12, 0x1

    .line 292
    const-string/jumbo v27, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 293
    const-string/jumbo v27, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 294
    .local v25, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v25, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 298
    .end local v25    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_12
    :goto_8
    const-string/jumbo v27, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 303
    const-string/jumbo v27, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 304
    .local v21, "text":Ljava/lang/CharSequence;
    if-eqz v21, :cond_13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 308
    .end local v21    # "text":Ljava/lang/CharSequence;
    :cond_13
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->getParticipantsFromDirectShare(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v17

    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    goto/16 :goto_2

    .line 295
    .local v17, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v25    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_14
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 305
    .end local v25    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v21    # "text":Ljava/lang/CharSequence;
    :cond_15
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    goto :goto_9

    .line 321
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v17    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v21    # "text":Ljava/lang/CharSequence;
    .restart local v20    # "size":I
    .restart local v22    # "threadId":J
    :cond_16
    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_3

    .line 324
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v22    # "threadId":J
    :cond_17
    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createConversationFromParticipants(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_3

    .line 343
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v20    # "size":I
    .restart local v8    # "conversationUri":Landroid/net/Uri;
    .restart local v22    # "threadId":J
    :catch_0
    move-exception v9

    .line 344
    .local v9, "e":Ljava/lang/RuntimeException;
    const-wide/16 v22, -0x1

    goto/16 :goto_4

    .line 358
    .end local v8    # "conversationUri":Landroid/net/Uri;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :cond_18
    const-wide/16 v28, -0x1

    cmp-long v27, v22, v28

    if-eqz v27, :cond_19

    .line 359
    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_5

    .line 361
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_19
    sget-object v27, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    move-object/from16 v0, v27

    if-eq v13, v0, :cond_8

    .line 362
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 364
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v27

    .line 363
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_5

    .line 368
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_1a
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v27

    .line 366
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    .restart local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_5

    .line 384
    .end local v6    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v11    # "focusMessageUri":Landroid/net/Uri;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v22    # "threadId":J
    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_6
.end method
