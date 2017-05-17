.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsStatusMgr.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactCollector"
.end annotation


# static fields
.field private static final RAWCONTACT_QUERY_TOKEN:I = 0x3e9


# instance fields
.field private cancelled:Z

.field private mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->doInBackGround(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 534
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelled:Z

    .line 533
    return-void
.end method

.method private doInBackGround(Landroid/database/Cursor;)V
    .locals 21
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelled:Z

    if-eqz v3, :cond_1

    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_0
    return-void

    .line 597
    :cond_1
    :try_start_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 599
    .local v15, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    const-string/jumbo v3, "_id"

    .line 598
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 601
    .local v17, "rawContactIdClmn":I
    const-string/jumbo v3, "contact_id"

    .line 600
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 603
    .local v14, "contactIdClmn":I
    const-string/jumbo v3, "account_name"

    .line 602
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 605
    .local v2, "accNameClmn":I
    const-string/jumbo v3, "account_type"

    .line 604
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 607
    .local v9, "accTypeClmn":I
    const-string/jumbo v3, "sourceid"

    .line 606
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 608
    .local v18, "sourceIdClmn":I
    const-wide/16 v12, -0x1

    .line 609
    .local v12, "contactId":J
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v19, "workRawIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    move-object/from16 v16, v0

    .line 611
    .local v16, "rawContactArray":[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 612
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 613
    .local v10, "cid":J
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 614
    .local v4, "rid":J
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "accType":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "accName":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 617
    .local v8, "sourceId":Ljava/lang/String;
    cmp-long v3, v10, v12

    if-eqz v3, :cond_3

    .line 618
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 619
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 622
    :cond_2
    move-wide v12, v10

    .line 624
    :cond_3
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 630
    .end local v2    # "accNameClmn":I
    .end local v4    # "rid":J
    .end local v6    # "accType":Ljava/lang/String;
    .end local v7    # "accName":Ljava/lang/String;
    .end local v8    # "sourceId":Ljava/lang/String;
    .end local v9    # "accTypeClmn":I
    .end local v10    # "cid":J
    .end local v12    # "contactId":J
    .end local v14    # "contactIdClmn":I
    .end local v15    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    .end local v16    # "rawContactArray":[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    .end local v17    # "rawContactIdClmn":I
    .end local v18    # "sourceIdClmn":I
    .end local v19    # "workRawIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    :catchall_0
    move-exception v3

    .line 631
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 630
    throw v3

    .line 626
    .restart local v2    # "accNameClmn":I
    .restart local v9    # "accTypeClmn":I
    .restart local v12    # "contactId":J
    .restart local v14    # "contactIdClmn":I
    .restart local v15    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    .restart local v16    # "rawContactArray":[Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;
    .restart local v17    # "rawContactIdClmn":I
    .restart local v18    # "sourceIdClmn":I
    .restart local v19    # "workRawIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;>;"
    :cond_4
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 627
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$RawContact;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_5
    invoke-static {v15}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-set1(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_6

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 637
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;

    move-result-object v20

    monitor-enter v20

    .line 638
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v20

    .line 588
    return-void

    .line 637
    :catchall_1
    move-exception v3

    monitor-exit v20

    throw v3
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelOperation(I)V

    .line 539
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelled:Z

    .line 541
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 537
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aToken"    # I
    .param p2, "aCookie"    # Ljava/lang/Object;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 565
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelled:Z

    if-eqz v1, :cond_1

    .line 566
    if-eqz p3, :cond_0

    .line 567
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_0
    return-void

    .line 571
    :cond_1
    if-nez p3, :cond_3

    .line 572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-set1(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 573
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    :cond_2
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 577
    return-void

    .line 580
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;

    invoke-direct {v1, p0, p3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector$1;-><init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 585
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 564
    return-void
.end method

.method public refresh(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->cancelled:Z

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 549
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 550
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get0()[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "deleted=0"

    .line 551
    const-string/jumbo v7, "contact_id ASC"

    .line 548
    const/16 v1, 0x3e9

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactCollector;->mCallback:Ljava/lang/Runnable;

    .line 544
    return-void
.end method
