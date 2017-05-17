.class Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;
.super Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;
.source "FindAndLinkProcessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkPersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x0

.field public static final DISPLAY_NAME:I = 0x1

.field public static final DISPLAY_NAME_ALT:I = 0x2

.field public static final IN_VISIBLE_GROUP:I = 0x4

.field private static final MAX_CONTACT_SIZE:J = 0xfL

.field private static final PERSIST_TRIES:I = 0x3

.field public static final PHOTO_ID:I = 0x3

.field private static final RESULT_COLUMNS:[Ljava/lang/String;

.field private static final RESULT_FAILURE_DISKFULL:I = -0x2

.field private static final RESULT_FAILURE_GENERAL:I = -0x1

.field private static final RESULT_FAILURE_LINKERROR:I = -0x3

.field private static final RESULT_FAILURE_TOOMANYLINK:I = -0x4

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final RESULT_UNCHANGED:I

.field private static isShowFailedInfo:Z


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private volatile mLinkResult:I

.field mLinkedContactsLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mProgress:Landroid/app/ProgressDialog;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 471
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 472
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 473
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 474
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 475
    const-string/jumbo v1, "in_visible_group"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 470
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->RESULT_COLUMNS:[Ljava/lang/String;

    .line 455
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 1
    .param p1, "target"    # Landroid/app/Activity;
    .param p4, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p2, "linkedContatctsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "linkedContactsLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContactsLength:Ljava/util/ArrayList;

    .line 500
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 501
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContactsLength:Ljava/util/ArrayList;

    .line 502
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mContactUri:Landroid/net/Uri;

    .line 498
    return-void
.end method

.method private static buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p1, "rawContactId1"    # J
    .param p3, "rawContactId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 801
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 803
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "type"

    .line 804
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 805
    const-string/jumbo v1, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 806
    const-string/jumbo v1, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 807
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    return-void
.end method

.method private joinAggregate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
        }
    .end annotation

    .prologue
    .line 652
    .local p2, "linkedContatctsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "linkedContactsLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 653
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v31, "successRawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v16, "failureContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v26, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 658
    .local v14, "currentIndex":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f

    .line 659
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v30, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "contact_id"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string/jumbo v4, " IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    move/from16 v23, v14

    .local v23, "j":I
    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v14

    move/from16 v0, v23

    if-ge v0, v4, :cond_0

    .line 663
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string/jumbo v4, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 666
    :cond_0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 667
    const-string/jumbo v4, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const/4 v13, 0x0

    .line 671
    .local v13, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    new-array v0, v4, [J

    move-object/from16 v27, v0

    .line 674
    .local v27, "rawContactIds":[J
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 675
    const-string/jumbo v5, "_id"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    .line 676
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 674
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 678
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_6

    .line 679
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v8, 0xf

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 680
    move/from16 v23, v14

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v14

    move/from16 v0, v23

    if-ge v0, v4, :cond_1

    .line 682
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 684
    :cond_1
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v14, v4

    .line 699
    if-eqz v13, :cond_2

    .line 700
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_2
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 688
    :cond_3
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v27, v0

    .line 689
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 690
    const/16 v19, 0x0

    .line 692
    .local v19, "index":I
    :cond_4
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v27, v19

    .line 693
    add-int/lit8 v19, v19, 0x1

    .line 694
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 696
    .end local v19    # "index":I
    :cond_5
    const/4 v4, 0x0

    aget-wide v4, v27, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :cond_6
    if-eqz v13, :cond_7

    .line 700
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_7
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    .local v25, "oldOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v24, "newOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .local v20, "index1":I
    :goto_4
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_b

    .line 710
    const/16 v21, 0x0

    .local v21, "index2":I
    :goto_5
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_a

    .line 711
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 712
    aget-wide v4, v27, v20

    .line 713
    aget-wide v8, v27, v21

    .line 712
    move-object/from16 v0, v24

    invoke-static {v0, v4, v5, v8, v9}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 710
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 698
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v20    # "index1":I
    .end local v21    # "index2":I
    .end local v24    # "newOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v25    # "oldOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v4

    .line 699
    if-eqz v13, :cond_9

    .line 700
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 698
    :cond_9
    throw v4

    .line 709
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v20    # "index1":I
    .restart local v21    # "index2":I
    .restart local v24    # "newOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v25    # "oldOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 718
    .end local v21    # "index2":I
    :cond_b
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_c

    .line 719
    new-instance v4, Landroid/content/OperationApplicationException;

    .line 720
    const-string/jumbo v5, "Too many content provider operations in one batch. The maximum number of operations per batch is 500"

    .line 719
    invoke-direct {v4, v5}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 725
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_d

    .line 726
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 732
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_e

    .line 733
    const-string/jumbo v4, "com.android.contacts"

    move-object/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    goto/16 :goto_3

    .line 728
    :cond_d
    const-string/jumbo v4, "com.android.contacts"

    move-object/from16 v0, v25

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 729
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v26    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_6

    .line 735
    :cond_e
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v14, v4

    goto/16 :goto_3

    .line 739
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v20    # "index1":I
    .end local v23    # "j":I
    .end local v24    # "newOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v25    # "oldOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v27    # "rawContactIds":[J
    .end local v30    # "selection":Ljava/lang/StringBuilder;
    :cond_f
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 740
    .local v3, "uri":Landroid/net/Uri;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v29, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_15

    .line 742
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string/jumbo v4, " IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string/jumbo v4, "SELECT "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string/jumbo v4, "contact_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string/jumbo v4, " FROM "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string/jumbo v4, "raw_contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string/jumbo v4, " WHERE "

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v4, "raw_contacts"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string/jumbo v4, "._id IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const/16 v18, 0x0

    :goto_7
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_10

    .line 752
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    const-string/jumbo v4, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 755
    :cond_10
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 756
    const-string/jumbo v4, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string/jumbo v4, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->isShowFailedInfo:Z

    .line 770
    :goto_8
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v28, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v22

    .line 775
    .local v22, "isGawEnabled":Z
    if-eqz v22, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v17

    .line 776
    :goto_9
    const/16 v32, 0x0

    const/4 v15, 0x0

    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->RESULT_COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 777
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_13

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 779
    :cond_11
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 780
    .local v6, "contactId":J
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 781
    const/4 v4, 0x1

    .line 780
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 781
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 782
    const/4 v4, 0x3

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 783
    const/4 v4, 0x4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_18

    const/4 v12, 0x1

    .line 780
    :goto_a
    invoke-direct/range {v5 .. v12}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;-><init>(JLjava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    if-eqz v22, :cond_12

    .line 786
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->createOrUpdateContactInitials(J)V

    .line 788
    :cond_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    if-nez v4, :cond_11

    .line 790
    .end local v6    # "contactId":J
    :cond_13
    if-eqz v15, :cond_14

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_14
    :goto_b
    if-eqz v32, :cond_1c

    throw v32

    .line 760
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v22    # "isGawEnabled":Z
    .end local v28    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    :cond_15
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const-string/jumbo v4, " IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const/16 v18, 0x0

    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_16

    .line 763
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string/jumbo v4, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 766
    :cond_16
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 767
    const-string/jumbo v4, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->isShowFailedInfo:Z

    goto/16 :goto_8

    .line 775
    .restart local v22    # "isGawEnabled":Z
    .restart local v28    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    :cond_17
    const/16 v17, 0x0

    .local v17, "gawManager":Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    goto/16 :goto_9

    .line 783
    .end local v17    # "gawManager":Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;
    .restart local v6    # "contactId":J
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_18
    const/4 v12, 0x0

    goto :goto_a

    .line 790
    .end local v6    # "contactId":J
    :catch_0
    move-exception v32

    goto :goto_b

    .end local v15    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    move-object/from16 v33, v5

    move-object v5, v4

    move-object/from16 v4, v33

    :goto_d
    if-eqz v15, :cond_19

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_19
    :goto_e
    if-eqz v5, :cond_1b

    throw v5

    :catch_2
    move-exception v8

    if-nez v5, :cond_1a

    move-object v5, v8

    goto :goto_e

    :cond_1a
    if-eq v5, v8, :cond_19

    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1b
    throw v4

    .line 791
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_1c
    return-object v28

    .line 790
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    move-object/from16 v5, v32

    goto :goto_d
.end method

.method private setNoResultFound(Landroid/app/Activity;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 629
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 626
    return-void
.end method


# virtual methods
.method public cancelLink()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 636
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    .line 632
    return-void
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 11
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "contactIds"    # [Ljava/lang/Long;

    .prologue
    const/4 v10, -0x3

    .line 525
    const/4 v5, 0x0

    .line 526
    .local v5, "tries":I
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "result":Ljava/lang/Integer;
    move v6, v5

    .line 528
    .end local v5    # "tries":I
    .local v6, "tries":I
    :goto_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "tries":I
    .restart local v5    # "tries":I
    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 530
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContatctsIds:Ljava/util/ArrayList;

    .line 531
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkedContactsLength:Ljava/util/ArrayList;

    .line 530
    invoke-direct {p0, p1, v7, v8}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->joinAggregate(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    .line 532
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 554
    :cond_0
    :goto_1
    return-object v4

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v7, "LinkProcessActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sql disk full: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v7, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 545
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v3

    .line 546
    .local v3, "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    const/4 v7, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 539
    .end local v3    # "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    :catch_2
    move-exception v0

    .line 541
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v7, "LinkProcessActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Version consistency failed, re-parenting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v6, v5

    .end local v5    # "tries":I
    .restart local v6    # "tries":I
    goto :goto_0

    .line 534
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    .end local v6    # "tries":I
    .restart local v5    # "tries":I
    :catch_3
    move-exception v2

    .line 536
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LinkProcessActivity"

    const-string/jumbo v8, "Problem persisting contacts aggregation."

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "contactIds"    # [Ljava/lang/Object;

    .prologue
    .line 523
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Long;

    .end local p2    # "contactIds":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->doInBackground(Landroid/app/Activity;[Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 560
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    :cond_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 564
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 565
    sget-boolean v3, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->isShowFailedInfo:Z

    if-eqz v3, :cond_5

    .line 567
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->setNoResultFound(Landroid/app/Activity;)V

    .line 568
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 569
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    move-object v3, p1

    .line 570
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .line 568
    invoke-static {v4, v6, v5, v3}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->show(Landroid/app/FragmentManager;ILjava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;)V

    .line 617
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 621
    :cond_3
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    if-eqz v3, :cond_4

    .line 622
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 559
    :cond_4
    return-void

    .line 573
    :cond_5
    const-string/jumbo v3, "com.android.contacts.action.FIND_PROCESS_SINGLE_CONTACT"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 574
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v2, "resultIntent":Landroid/content/Intent;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 576
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 578
    .local v1, "newContactUri":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p1, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 581
    const v3, 0x7f090243

    invoke-static {p1, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 585
    .end local v1    # "newContactUri":Landroid/net/Uri;
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 586
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mResultList:Ljava/util/ArrayList;

    move-object v3, p1

    .line 587
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    .line 585
    invoke-static {v4, v8, v5, v3}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->show(Landroid/app/FragmentManager;ILjava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;)V

    goto :goto_0

    .line 591
    :cond_7
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->setNoResultFound(Landroid/app/Activity;)V

    .line 592
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 594
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v5, :cond_2

    .line 596
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 608
    const v0, 0x7f0901fb

    .line 611
    .local v0, "messageId":I
    :goto_2
    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->showErrorDialog(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 598
    .end local v0    # "messageId":I
    :pswitch_0
    const v0, 0x7f09020e

    .line 599
    .restart local v0    # "messageId":I
    goto :goto_2

    .line 601
    .end local v0    # "messageId":I
    :pswitch_1
    const v0, 0x7f09020d

    .line 602
    .restart local v0    # "messageId":I
    goto :goto_2

    .line 605
    .end local v0    # "messageId":I
    :pswitch_2
    const v0, 0x7f09020f

    .line 606
    .restart local v0    # "messageId":I
    goto :goto_2

    .line 618
    .end local v0    # "messageId":I
    :cond_9
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_1

    .line 596
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 559
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 508
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask$1;-><init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->mLinkResult:I

    .line 507
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 507
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
