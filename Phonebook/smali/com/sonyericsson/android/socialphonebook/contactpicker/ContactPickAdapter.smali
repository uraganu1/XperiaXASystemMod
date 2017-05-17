.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
.super Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
.source "ContactPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter$PhonePickQuery;,
        Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter$DataPickQuery;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_ID_INVALID:I = -0x1


# instance fields
.field private mIdColumnIndex:I

.field private mItemViewMode:I

.field private mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

.field private mQueryContact:Z

.field private mRecipientItems:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mItemViewMode:I

    .line 101
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->setMode(Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;)V

    .line 99
    return-void
.end method

.method private containsChecked(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "item"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 332
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 334
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mRecipientItems:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->contains(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    move-result v5

    return v5

    .line 337
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 339
    :cond_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 340
    .local v2, "itemId":J
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "itemData":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 342
    .local v4, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 343
    .local v0, "contactItem":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mRecipientItems:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->contains(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 344
    return v7

    .line 346
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 350
    .end local v0    # "contactItem":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v1    # "itemData":Ljava/lang/String;
    .end local v2    # "itemId":J
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    return v6
.end method

.method private getContactDataItems(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .param p1, "source"    # Landroid/database/Cursor;

    .prologue
    .line 501
    iget-boolean v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v10, :cond_0

    .line 502
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    .line 503
    const-string/jumbo v11, "does not support to get data items in the mode of \'MODE_PICK_CONTACT\'"

    .line 502
    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 506
    :cond_0
    move-object v9, p1

    .line 508
    .local v9, "wrapper":Landroid/database/Cursor;
    :goto_0
    instance-of v10, v9, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    if-nez v10, :cond_1

    .line 510
    instance-of v10, v9, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;

    if-nez v10, :cond_3

    instance-of v10, v9, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;

    :goto_1
    if-nez v10, :cond_4

    .line 523
    :cond_1
    instance-of v10, v9, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    if-eqz v10, :cond_8

    move-object v10, v9

    .line 524
    check-cast v10, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 525
    .local v2, "cursor":Landroid/database/Cursor;
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    .end local v9    # "wrapper":Landroid/database/Cursor;
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->getNumberOfData()I

    move-result v5

    .line 527
    .local v5, "itemCount":I
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 529
    .local v6, "oldPosition":I
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v10, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter$DataPickQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 531
    .local v7, "out":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 533
    .local v1, "contentSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 534
    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 537
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 538
    .local v8, "row":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 539
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 540
    const/4 v10, 0x2

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 541
    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 542
    const/4 v10, 0x4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 543
    const/4 v10, 0x5

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 544
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 545
    const/4 v10, 0x7

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 546
    const/16 v10, 0x8

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 547
    const/16 v10, 0x9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 548
    const/16 v10, 0xa

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 550
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v8    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 533
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 510
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "contentSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "i":I
    .end local v5    # "itemCount":I
    .end local v6    # "oldPosition":I
    .end local v7    # "out":Landroid/database/MatrixCursor;
    .restart local v9    # "wrapper":Landroid/database/Cursor;
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 515
    :cond_4
    instance-of v10, v9, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;

    if-eqz v10, :cond_5

    .line 516
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;

    .end local v9    # "wrapper":Landroid/database/Cursor;
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/util/FilterCursor;->getFilteredCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 520
    .local v3, "extractedCursor":Landroid/database/Cursor;
    :goto_3
    move-object v9, v3

    .restart local v9    # "wrapper":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 518
    .end local v3    # "extractedCursor":Landroid/database/Cursor;
    :cond_5
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;

    .end local v9    # "wrapper":Landroid/database/Cursor;
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v3

    .restart local v3    # "extractedCursor":Landroid/database/Cursor;
    goto :goto_3

    .line 555
    .end local v3    # "extractedCursor":Landroid/database/Cursor;
    .restart local v1    # "contentSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "i":I
    .restart local v5    # "itemCount":I
    .restart local v6    # "oldPosition":I
    .restart local v7    # "out":Landroid/database/MatrixCursor;
    :cond_6
    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 557
    if-lez v5, :cond_7

    .line 558
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 560
    :cond_7
    return-object v7

    .line 562
    .end local v1    # "contentSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "i":I
    .end local v5    # "itemCount":I
    .end local v6    # "oldPosition":I
    .end local v7    # "out":Landroid/database/MatrixCursor;
    .restart local v9    # "wrapper":Landroid/database/Cursor;
    :cond_8
    const/4 v10, 0x0

    return-object v10
.end method

.method private getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setMode(Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isPickContact()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mItemViewMode:I

    .line 394
    :goto_0
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mItemViewMode:I

    goto :goto_0
.end method


# virtual methods
.method protected bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;I)V

    .line 354
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 364
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 366
    .local v1, "imageView":Landroid/widget/QuickContactBadge;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->isQuickContactEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 369
    const-wide/16 v2, 0x0

    .line 370
    .local v2, "photoId":J
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 372
    .local v4, "contactId":J
    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 382
    :cond_0
    :goto_0
    int-to-long v8, p2

    cmp-long v0, v8, v10

    if-nez v0, :cond_1

    .line 383
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v0

    .line 382
    if-eqz v0, :cond_1

    .line 384
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountType(J)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "accountType":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAdnPhotoId(Ljava/lang/String;)J

    move-result-wide v2

    .line 387
    .end local v6    # "accountType":Ljava/lang/String;
    :cond_1
    int-to-long v8, p2

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;JLandroid/net/Uri;)V

    .line 363
    :goto_1
    return-void

    .line 376
    .end local v4    # "contactId":J
    :cond_2
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 377
    .restart local v4    # "contactId":J
    invoke-interface {p3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 390
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;JJ)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionId"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    move-object/from16 v12, p1

    .line 225
    check-cast v12, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    .line 227
    .local v12, "itemView":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setTag(Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemPlacementInSection(I)Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    move-result-object v15

    .line 230
    .local v15, "placement":Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;
    iget-boolean v0, v15, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 231
    iget-object v0, v15, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 236
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->isSearchMode()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getUpperCaseQueryString()[C

    move-result-object v17

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mIdColumnIndex:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 240
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v4, v0

    .line 248
    .local v4, "contactId":J
    :goto_2
    invoke-static {v4, v5}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v8

    .line 250
    .local v8, "isProfile":Z
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1, v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Z)V

    .line 254
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->isPhotoSupported(I)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isShowPhotos()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->bindPhoto(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 259
    :cond_0
    const/4 v6, 0x0

    .line 260
    .local v6, "contactItemsCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 265
    move-wide v10, v4

    .line 266
    .local v10, "itemId":J
    if-eqz v8, :cond_8

    sget-object v16, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    .local v16, "uri":Landroid/net/Uri;
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v17, v10, v18

    if-lez v17, :cond_9

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 268
    .end local v16    # "uri":Landroid/net/Uri;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v9

    .line 283
    .end local v6    # "contactItemsCursor":Landroid/database/Cursor;
    .local v9, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getMaxRecipient()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 284
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getCheckView()Landroid/widget/CheckedTextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 291
    .end local v9    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v10    # "itemId":J
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isNoData()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 302
    :cond_2
    :goto_7
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getSubLineLayout()Landroid/view/ViewGroup;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 303
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getDataTextView()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    .line 304
    .local v7, "display":I
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getSubLineLayout()Landroid/view/ViewGroup;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 308
    .end local v7    # "display":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 309
    const/16 v17, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 315
    .local v13, "lookupKey":Ljava/lang/String;
    :goto_8
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 317
    .restart local v16    # "uri":Landroid/net/Uri;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 318
    .local v14, "lookupUri":Landroid/net/Uri;
    const v17, 0x7f0e0021

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 319
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 322
    iget-boolean v0, v15, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 325
    iget-object v0, v15, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 324
    const v19, 0x7f0901a5

    .line 323
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    :goto_9
    return-void

    .line 233
    .end local v4    # "contactId":J
    .end local v8    # "isProfile":Z
    .end local v13    # "lookupKey":Ljava/lang/String;
    .end local v14    # "lookupUri":Landroid/net/Uri;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 242
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 243
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .restart local v4    # "contactId":J
    goto/16 :goto_2

    .line 245
    .end local v4    # "contactId":J
    :cond_7
    const/16 v17, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .restart local v4    # "contactId":J
    goto/16 :goto_2

    .line 266
    .restart local v6    # "contactItemsCursor":Landroid/database/Cursor;
    .restart local v8    # "isProfile":Z
    .restart local v10    # "itemId":J
    :cond_8
    sget-object v16, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v16    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 267
    :cond_9
    const/16 v16, 0x0

    .local v16, "uri":Landroid/net/Uri;
    goto/16 :goto_4

    .line 270
    .end local v10    # "itemId":J
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDataItems(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    .local v6, "contactItemsCursor":Landroid/database/Cursor;
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_b

    .line 273
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 278
    .restart local v10    # "itemId":J
    :goto_a
    const-wide/16 v18, 0x0

    cmp-long v17, v10, v18

    if-lez v17, :cond_c

    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 280
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v9

    .restart local v9    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    goto/16 :goto_5

    .line 275
    .end local v9    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v10    # "itemId":J
    :cond_b
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v10, v0

    .restart local v10    # "itemId":J
    goto :goto_a

    .line 279
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "uri":Landroid/net/Uri;
    goto :goto_b

    .line 286
    .end local v6    # "contactItemsCursor":Landroid/database/Cursor;
    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v9    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    :cond_d
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getCheckView()Landroid/widget/CheckedTextView;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->containsChecked(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_6

    .line 292
    .end local v9    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v10    # "itemId":J
    :cond_e
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_f

    .line 293
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getDataTextView()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getTypeTextView()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 296
    :cond_f
    const/16 v17, 0x8

    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showData(Landroid/database/Cursor;II)V

    .line 297
    const/16 v17, 0x8

    const/16 v18, 0x1

    .line 298
    const/16 v19, 0x2

    .line 297
    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showDataType(Landroid/database/Cursor;III)V

    goto/16 :goto_7

    .line 311
    :cond_10
    const/16 v17, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "lookupKey":Ljava/lang/String;
    goto/16 :goto_8

    .line 327
    .restart local v14    # "lookupUri":Landroid/net/Uri;
    .local v16, "uri":Landroid/net/Uri;
    :cond_11
    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mRecipientItems:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->clear()V

    .line 212
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 210
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 12
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 106
    instance-of v9, p1, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    if-eqz v9, :cond_0

    move-object v2, p1

    .line 107
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    .line 109
    .local v2, "dataPickLoader":Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isMultiChoice()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->setWrapCursor(Z)V

    .line 110
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-eqz v9, :cond_7

    .line 113
    const/4 v9, -0x1

    iput v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mIdColumnIndex:I

    .line 119
    :goto_0
    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mIdColumnIndex:I

    invoke-virtual {v2, v9}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->setIdColumnIndex(I)V

    .line 121
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->shouldFilterOutByPredicate()Z

    move-result v6

    .line 122
    .local v6, "shouldFilter":Z
    if-eqz v6, :cond_0

    .line 123
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getPredicateForFiltering()Lcom/google/common/base/Predicate;

    move-result-object v3

    .line 124
    .local v3, "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v9}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getColumnNameForFilteringByPredicate()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->setFiltering(Lcom/google/common/base/Predicate;Ljava/lang/String;)V

    .line 131
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v2    # "dataPickLoader":Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
    .end local v3    # "filter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    .end local v6    # "shouldFilter":Z
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->isSearchMode()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getFilterUri(J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 134
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v5, ""

    .end local v5    # "query":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    const-string/jumbo v9, "limit"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getDirectoryResultLimit()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    const-string/jumbo v9, "directory"

    .line 137
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    const-string/jumbo v9, "remove_duplicate_entries"

    const-string/jumbo v10, "true"

    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 150
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSelection()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 152
    instance-of v9, p1, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    if-eqz v9, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .restart local v5    # "query":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v4, 0x0

    .local v4, "hasQueryText":Z
    :goto_2
    move-object v9, p1

    .line 155
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v10}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->hasProfile()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v4, :cond_b

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->setLoadProfile(Z)V

    .line 160
    .end local v4    # "hasQueryText":Z
    .end local v5    # "query":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 163
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v9, :cond_c

    .line 164
    const-string/jumbo v8, "display_name"

    .line 165
    .local v8, "sortOrder":Ljava/lang/String;
    const/4 v7, 0x1

    .line 184
    .local v7, "sortColumn":I
    :goto_4
    instance-of v9, p1, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    if-eqz v9, :cond_5

    move-object v9, p1

    .line 185
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;

    invoke-virtual {v9, v7}, Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;->setSortColumnIndex(I)V

    .line 188
    :cond_5
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-nez v9, :cond_6

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "contact_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    :cond_6
    invoke-virtual {p1, v8}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 105
    return-void

    .line 114
    .end local v7    # "sortColumn":I
    .end local v8    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "dataPickLoader":Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
    :cond_7
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v9, :cond_8

    .line 115
    const/4 v9, 0x0

    iput v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mIdColumnIndex:I

    goto/16 :goto_0

    .line 117
    :cond_8
    const/4 v9, 0x4

    iput v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mIdColumnIndex:I

    goto/16 :goto_0

    .line 141
    .end local v2    # "dataPickLoader":Lcom/sonyericsson/android/socialphonebook/list/DataPickLoader;
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->configureUri(Landroid/content/CursorLoader;J)V

    .line 143
    instance-of v9, p1, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;

    if-eqz v9, :cond_2

    .line 144
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, p1

    .line 145
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->setHeaderOn(Z)V

    goto/16 :goto_1

    .line 154
    .restart local v5    # "query":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x1

    .restart local v4    # "hasQueryText":Z
    goto/16 :goto_2

    .line 155
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 167
    .end local v4    # "hasQueryText":Z
    .end local v5    # "query":Ljava/lang/String;
    :cond_c
    const-string/jumbo v8, "display_name"

    .line 168
    .restart local v8    # "sortOrder":Ljava/lang/String;
    const/4 v7, 0x7

    .restart local v7    # "sortColumn":I
    goto :goto_4

    .line 171
    .end local v7    # "sortColumn":I
    .end local v8    # "sortOrder":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getSortOrder()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 172
    const-string/jumbo v8, "sort_key"

    .line 173
    .restart local v8    # "sortOrder":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v9, :cond_e

    .line 174
    const/16 v7, 0xa

    .restart local v7    # "sortColumn":I
    goto :goto_4

    .line 175
    .end local v7    # "sortColumn":I
    :cond_e
    const/16 v7, 0x9

    .restart local v7    # "sortColumn":I
    goto/16 :goto_4

    .line 177
    .end local v7    # "sortColumn":I
    .end local v8    # "sortOrder":Ljava/lang/String;
    :cond_f
    const-string/jumbo v8, "sort_key_alt"

    .line 178
    .restart local v8    # "sortOrder":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v9, :cond_10

    .line 179
    const/16 v7, 0xb

    .restart local v7    # "sortColumn":I
    goto/16 :goto_4

    .line 180
    .end local v7    # "sortColumn":I
    :cond_10
    const/16 v7, 0xa

    .restart local v7    # "sortColumn":I
    goto/16 :goto_4
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 567
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getQueryUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 568
    const-string/jumbo v2, "remove_duplicate_entries"

    const-string/jumbo v3, "true"

    .line 567
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 569
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 566
    return-void
.end method

.method public getContactDataItems(I)Landroid/database/Cursor;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 497
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDataItems(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v2, :cond_0

    .line 451
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 453
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 454
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getContactId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 413
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v1, :cond_0

    .line 414
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactId(I)J

    move-result-wide v2

    return-wide v2

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 417
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 418
    const-wide/16 v2, -0x1

    return-wide v2

    .line 420
    :cond_1
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getContactPhotoId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 487
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v1, :cond_0

    .line 488
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactPhotoId(I)J

    move-result-wide v2

    return-wide v2

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 491
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 427
    iget-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v6, :cond_0

    .line 428
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 430
    :cond_0
    const/4 v6, 0x4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 431
    .local v0, "contactId":J
    const/4 v6, 0x5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 438
    .local v5, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 439
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 440
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 442
    const-string/jumbo v7, "directory"

    .line 443
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 445
    :cond_1
    return-object v5

    .line 436
    .end local v2    # "directoryId":J
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method protected getFilterUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getFilterUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 460
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPhoneType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 465
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactNameDisplayOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 198
    .local v0, "sortPrimary":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getProjection(Z)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    .end local v0    # "sortPrimary":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "sortPrimary":Z
    goto :goto_0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->getQueryUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedUri(I)Landroid/net/Uri;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 470
    .local v0, "id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 471
    const/4 v3, 0x0

    return-object v3

    .line 473
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mQueryContact:Z

    if-eqz v3, :cond_2

    .line 474
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    .line 475
    .local v2, "isProfile":Z
    if-eqz v2, :cond_1

    .line 476
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 478
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 481
    .end local v2    # "isProfile":Z
    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 218
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mItemViewMode:I

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;-><init>(Landroid/content/Context;I)V

    .line 219
    .local v0, "view":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 220
    return-object v0
.end method

.method public setCheckedItems(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;)V
    .locals 0
    .param p1, "itemStore"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->mRecipientItems:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    .line 407
    return-void
.end method
