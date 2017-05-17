.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I = null

.field private static final AGGREGRATE_SINGLE_GROUP_CONTACTS:I = 0x2

.field private static final AGGREGRATE_TWO_CONTACTS:I = 0x1

.field private static final PERSIST_TRIES:I = 0x3


# instance fields
.field private mAggregateMode:I

.field private mContactInfo:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

.field private mLinkedContatctsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/DialogFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->values()[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 333
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mAggregateMode:I

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "linkedContatctsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 338
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 339
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mAggregateMode:I

    .line 336
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/lang/Long;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    .locals 24
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "contactIds"    # [Ljava/lang/Long;

    .prologue
    .line 353
    move-object/from16 v6, p1

    .line 354
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 357
    .local v13, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 358
    .local v17, "tries":I
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 359
    .local v16, "result":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    const-wide/16 v14, -0x1

    .local v14, "rawContactId":J
    move/from16 v18, v17

    .line 360
    .end local v17    # "tries":I
    .local v18, "tries":I
    :goto_0
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "tries":I
    .restart local v17    # "tries":I
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 362
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mAggregateMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 381
    :cond_0
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 383
    invoke-static {v13, v14, v15}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v4

    .line 384
    .local v4, "contactId":J
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->createOrUpdateContactInitials(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v4    # "contactId":J
    :cond_1
    :goto_2
    invoke-static {v6, v14, v15}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->newInstance(Landroid/content/Context;J)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .line 408
    return-object v16

    .line 364
    :pswitch_0
    const/16 v19, 0x0

    :try_start_1
    aget-object v19, p2, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 365
    const/16 v19, 0x1

    aget-object v19, p2, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 364
    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v13, v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->joinAggregate(Landroid/content/ContentResolver;JJ)[J

    move-result-object v11

    .line 366
    .local v11, "join2Results":[J
    if-eqz v11, :cond_0

    array-length v0, v11

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 367
    const/16 v19, 0x0

    aget-wide v14, v11, v19

    .line 368
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto :goto_1

    .line 372
    .end local v11    # "join2Results":[J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->joinAggregate(Landroid/content/ContentResolver;Ljava/util/ArrayList;)[J

    move-result-object v12

    .line 373
    .local v12, "joinMulResults":[J
    if-eqz v12, :cond_0

    array-length v0, v12

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 374
    const/16 v19, 0x0

    aget-wide v14, v12, v19

    .line 375
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 401
    .end local v12    # "joinMulResults":[J
    :catch_0
    move-exception v8

    .line 402
    .local v8, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->-get0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "sql disk full: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto :goto_2

    .line 398
    .end local v8    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v10

    .line 399
    .local v10, "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto :goto_2

    .line 392
    .end local v10    # "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    :catch_2
    move-exception v7

    .line 394
    .local v7, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->-get0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Version consistency failed, re-parenting: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    move/from16 v18, v17

    .end local v17    # "tries":I
    .restart local v18    # "tries":I
    goto/16 :goto_0

    .line 387
    .end local v7    # "e":Landroid/content/OperationApplicationException;
    .end local v18    # "tries":I
    .restart local v17    # "tries":I
    :catch_3
    move-exception v9

    .line 389
    .local v9, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->-get0()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Problem persisting contacts aggregation."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    sget-object v16, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto/16 :goto_2

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "contactIds"    # [Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Long;

    .end local p2    # "contactIds":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->doInBackground(Landroid/app/Activity;[Ljava/lang/Long;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;)V
    .locals 4
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .prologue
    .line 414
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    :cond_0
    return-void

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 419
    .local v1, "progress":Landroid/app/DialogFragment;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    if-ne p2, v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mContactInfo:Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->showNewContact(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V

    :goto_0
    move-object v2, p1

    .line 441
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v2

    if-nez v2, :cond_3

    .line 442
    return-void

    .line 423
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->-getcom_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 435
    const v0, 0x7f0901fb

    .line 438
    .local v0, "messageId":I
    :goto_1
    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->showErrorDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 425
    .end local v0    # "messageId":I
    :pswitch_0
    const v0, 0x7f09020e

    .line 426
    .restart local v0    # "messageId":I
    goto :goto_1

    .line 428
    .end local v0    # "messageId":I
    :pswitch_1
    const v0, 0x7f09020d

    .line 429
    .restart local v0    # "messageId":I
    goto :goto_1

    .line 432
    .end local v0    # "messageId":I
    :pswitch_2
    const v0, 0x7f09020f

    .line 433
    .restart local v0    # "messageId":I
    goto :goto_1

    .line 445
    .end local v0    # "messageId":I
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 448
    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVideoCallingGroupSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 449
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoGroupServiceUpdateCurrentStateIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    :cond_5
    return-void

    .line 446
    :cond_6
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_2

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 413
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->onPostExecute(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 345
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;

    move-result-object v0

    .line 346
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->mProgress:Ljava/lang/ref/WeakReference;

    .line 344
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
