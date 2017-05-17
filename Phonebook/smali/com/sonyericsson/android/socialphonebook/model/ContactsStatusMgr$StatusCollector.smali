.class Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;
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
    name = "StatusCollector"
.end annotation


# static fields
.field private static final STATUS_QUERY_TOKEN:I = 0x3ea


# instance fields
.field private cancelled:Z

.field private mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 649
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->cancelled:Z

    .line 648
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 653
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->cancelOperation(I)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->cancelled:Z

    .line 656
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    .line 652
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .param p1, "aToken"    # I
    .param p2, "aCookie"    # Ljava/lang/Object;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->cancelled:Z

    if-eqz v3, :cond_1

    .line 683
    if-eqz p3, :cond_0

    .line 684
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_0
    return-void

    .line 688
    :cond_1
    if-nez p3, :cond_3

    .line 690
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 689
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-set2(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    :cond_2
    return-void

    .line 699
    :cond_3
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v13, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;>;"
    const-string/jumbo v3, "raw_contact_id"

    .line 700
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 703
    .local v15, "rawContactIdClmn":I
    const-string/jumbo v3, "status"

    .line 702
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 705
    .local v16, "statusClmn":I
    const-string/jumbo v3, "status_ts"

    .line 704
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 707
    .local v17, "tsClmn":I
    const-string/jumbo v3, "status_res_package"

    .line 706
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 709
    .local v14, "pkgClmn":I
    const-string/jumbo v3, "status_icon"

    .line 708
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 711
    .local v2, "iconClmn":I
    const-string/jumbo v3, "status_label"

    .line 710
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 712
    .local v12, "lblClmn":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 713
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 714
    .local v4, "rid":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 715
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;

    .line 716
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 717
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 718
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 719
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 720
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 715
    invoke-direct/range {v3 .. v11}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 714
    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 723
    .end local v2    # "iconClmn":I
    .end local v4    # "rid":J
    .end local v12    # "lblClmn":I
    .end local v13    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;>;"
    .end local v14    # "pkgClmn":I
    .end local v15    # "rawContactIdClmn":I
    .end local v16    # "statusClmn":I
    .end local v17    # "tsClmn":I
    :catchall_0
    move-exception v3

    .line 724
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 723
    throw v3

    .line 722
    .restart local v2    # "iconClmn":I
    .restart local v12    # "lblClmn":I
    .restart local v13    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$ContactStatusEntry;>;"
    .restart local v14    # "pkgClmn":I
    .restart local v15    # "rawContactIdClmn":I
    .restart local v16    # "statusClmn":I
    .restart local v17    # "tsClmn":I
    :cond_4
    :try_start_1
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-set2(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get5(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    .line 730
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->this$0:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get4(Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 732
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    .line 681
    return-void

    .line 729
    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public refresh(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "aCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->cancelled:Z

    if-eqz v0, :cond_0

    .line 661
    return-void

    .line 664
    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 665
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->-get1()[Ljava/lang/String;

    move-result-object v4

    .line 666
    const-string/jumbo v5, "status_res_package IS NOT NULL"

    .line 663
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr$StatusCollector;->mCallback:Ljava/lang/Runnable;

    .line 659
    return-void
.end method
