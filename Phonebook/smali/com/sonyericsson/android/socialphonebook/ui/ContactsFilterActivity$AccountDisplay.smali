.class public Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
.super Ljava/lang/Object;
.source "ContactsFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountDisplay"
.end annotation


# instance fields
.field public mAliasType:Ljava/lang/String;

.field public final mDataSet:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public final mType:Ljava/lang/String;

.field public mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 718
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 711
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 712
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 720
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    .line 722
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 724
    const/4 v13, 0x0

    .line 726
    .local v13, "hasGroups":Z
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 727
    const-string/jumbo v5, "account_name"

    .line 726
    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 728
    const-string/jumbo v5, "account_type"

    .line 726
    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 729
    .local v12, "groupsUri":Landroid/net/Uri$Builder;
    if-eqz p4, :cond_0

    .line 730
    const-string/jumbo v4, "data_set"

    move-object/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 733
    :cond_0
    const/4 v10, 0x0

    .line 734
    .local v10, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 736
    .local v15, "iterator":Landroid/content/EntityIterator;
    :try_start_0
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v7, "deleted=0"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 737
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 738
    invoke-static {v10}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v15

    .line 739
    .local v15, "iterator":Landroid/content/EntityIterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 740
    const-string/jumbo v4, "group_is_read_only"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 741
    .local v14, "isReadOnly":I
    invoke-interface {v15}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 742
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "group_is_read_only"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    move-result-object v11

    .line 744
    .local v11, "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getIsDeleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->addGroup(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    const/4 v13, 0x1

    goto :goto_0

    .line 751
    .end local v11    # "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v14    # "isReadOnly":I
    .end local v15    # "iterator":Landroid/content/EntityIterator;
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_2
    if-eqz v15, :cond_3

    .line 752
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 754
    :cond_3
    if-eqz v10, :cond_4

    .line 755
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 759
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v13}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUngrouped:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->addGroup(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)V

    .line 719
    return-void

    .line 750
    .end local v10    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 751
    if-eqz v15, :cond_5

    .line 752
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 754
    :cond_5
    if-eqz v10, :cond_6

    .line 755
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_6
    throw v4
.end method

.method private addGroup(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)V
    .locals 1
    .param p1, "group"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .prologue
    .line 769
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 825
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 826
    .local v3, "p":Landroid/os/Parcelable;
    instance-of v4, v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    if-nez v4, :cond_1

    .line 824
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 829
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 830
    .local v0, "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 831
    .local v2, "oper":Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    .end local v0    # "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v2    # "oper":Landroid/content/ContentProviderOperation;
    .end local v3    # "p":Landroid/os/Parcelable;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 834
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 835
    .restart local v3    # "p":Landroid/os/Parcelable;
    instance-of v4, v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    if-nez v4, :cond_4

    .line 833
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 838
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 839
    .restart local v0    # "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 840
    .restart local v2    # "oper":Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 823
    .end local v0    # "group":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v2    # "oper":Landroid/content/ContentProviderOperation;
    .end local v3    # "p":Landroid/os/Parcelable;
    :cond_5
    return-void
.end method

.method public setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;Z)V
    .locals 1
    .param p1, "child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p2, "shouldSync"    # Z

    .prologue
    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ZZ)V

    .line 795
    return-void
.end method

.method public setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ZZ)V
    .locals 2
    .param p1, "child"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .param p2, "shouldSync"    # Z
    .param p3, "attemptRemove"    # Z

    .prologue
    .line 804
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->putShouldSync(Z)V

    .line 805
    if-eqz p2, :cond_1

    .line 806
    if-eqz p3, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-get2()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    :goto_0
    return-void

    .line 812
    :cond_1
    if-eqz p3, :cond_2

    .line 813
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 4
    .param p1, "shouldSync"    # Z

    .prologue
    .line 781
    if-eqz p1, :cond_1

    .line 782
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 783
    .local v1, "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 785
    .local v2, "p":Landroid/os/Parcelable;
    instance-of v3, v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 789
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 790
    .local v0, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->setShouldSync(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;ZZ)V

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 782
    .end local v0    # "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .end local v1    # "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;>;"
    .end local v2    # "p":Landroid/os/Parcelable;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "oppositeChildren":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;>;"
    goto :goto_0

    .line 780
    :cond_2
    return-void
.end method
