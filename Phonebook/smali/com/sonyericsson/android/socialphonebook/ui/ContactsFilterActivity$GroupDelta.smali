.class public Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
.super Lcom/android/contacts/common/model/ValuesDelta;
.source "ContactsFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    .line 497
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .locals 2
    .param p0, "after"    # Landroid/content/ContentValues;

    .prologue
    .line 560
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;-><init>()V

    .line 561
    .local v0, "entry":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 562
    iput-object p0, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 563
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .locals 2
    .param p0, "before"    # Landroid/content/ContentValues;

    .prologue
    .line 553
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;-><init>()V

    .line 554
    .local v0, "entry":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    iput-object p0, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    .line 555
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    .line 556
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "accountHasGroups"    # Z

    .prologue
    .line 518
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 519
    const-string/jumbo v1, "account_name"

    .line 518
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 520
    const-string/jumbo v1, "account_type"

    .line 518
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 521
    .local v7, "settingsUri":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 522
    const-string/jumbo v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 525
    :cond_0
    const/4 v6, 0x0

    .line 527
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 528
    const-string/jumbo v0, "should_sync"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "ungrouped_visible"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 529
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 527
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 531
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 532
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string/jumbo v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const-string/jumbo v0, "should_sync"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string/jumbo v0, "ungrouped_visible"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 548
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_1
    return-object v0

    .line 543
    :cond_2
    :try_start_1
    const-string/jumbo v0, "should_sync"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string/jumbo v0, "ungrouped_visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 548
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_3
    return-object v0

    .line 547
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 548
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_4
    throw v0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->isUpdate()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v7, :cond_1

    .line 635
    const-string/jumbo v7, "account_name"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v7, "account_type"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "accountType":Ljava/lang/String;
    const-string/jumbo v7, "data_set"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "dataSet":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "account_name=? AND account_type=?"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .local v4, "selection":Ljava/lang/StringBuilder;
    if-nez v3, :cond_0

    .line 642
    const-string/jumbo v7, " AND data_set IS NULL"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-array v5, v11, [Ljava/lang/String;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    .line 648
    .local v5, "selectionArgs":[Ljava/lang/String;
    :goto_0
    sget-object v7, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 649
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 657
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/StringBuilder;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 658
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    return-object v7

    .line 645
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "accountType":Ljava/lang/String;
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "dataSet":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v7, " AND data_set=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v3, v5, v11

    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 651
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/StringBuilder;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 653
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;->-wrap0(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 652
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 654
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 659
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->isInsert()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v7, :cond_3

    .line 661
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 662
    sget-object v7, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 663
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 664
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    return-object v7

    .line 666
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsDeleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 591
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v1, :cond_0

    return v0

    .line 592
    :cond_0
    const-string/jumbo v1, "deleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getShouldSync()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 582
    const-string/jumbo v2, "should_sync"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v2, :cond_1

    .line 608
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v2, :cond_0

    .line 609
    const v2, 0x7f0900c1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 611
    :cond_0
    const v2, 0x7f0900c2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 614
    :cond_1
    const-string/jumbo v2, "res_package"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "resourcePackage":Ljava/lang/String;
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "title":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    return-object v1
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ungrouped_visible"

    .line 587
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 586
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "group_visible"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 508
    invoke-super {p0}, Lcom/android/contacts/common/model/ValuesDelta;->hashCode()I

    move-result v0

    return v0
.end method

.method public putShouldSync(Z)V
    .locals 2
    .param p1, "shouldSync"    # Z

    .prologue
    .line 599
    const-string/jumbo v1, "should_sync"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 595
    return-void

    .line 599
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->put(Ljava/lang/String;I)V

    .line 602
    return-void

    .line 603
    :cond_0
    const-string/jumbo v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    .locals 1
    .param p1, "accountHasGroups"    # Z

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mUngrouped:Z

    .line 568
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->mAccountHasGroups:Z

    .line 569
    return-object p0
.end method
