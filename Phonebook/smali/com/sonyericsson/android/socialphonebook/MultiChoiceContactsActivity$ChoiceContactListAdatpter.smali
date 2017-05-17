.class public Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.source "MultiChoiceContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChoiceContactListAdatpter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    .line 391
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 392
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 390
    return-void
.end method

.method private restoreMultiChoiceList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 429
    .local v0, "checkedItem":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "checkedItem":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->updateButtonState()V

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1, v7}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;[I)[I

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-static {v1, v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;I)I

    .line 422
    :cond_2
    return-void
.end method


# virtual methods
.method protected bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;

    .line 500
    .local v7, "cache":Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
    new-instance v6, Landroid/database/CharArrayBuffer;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 502
    .local v6, "buf":Landroid/database/CharArrayBuffer;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->mDisplayOrder:Z

    if-nez v0, :cond_0

    .line 503
    const/16 v0, 0x8

    invoke-interface {p3, v0, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 507
    :goto_0
    iget v8, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 508
    .local v8, "size":I
    if-eqz v8, :cond_1

    .line 509
    iput-object v6, v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 510
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v0, v1, v2, v8}, Landroid/widget/TextView;->setText([CII)V

    .line 515
    :goto_1
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 516
    .local v4, "contactId":J
    iget-object v1, v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 497
    return-void

    .line 505
    .end local v4    # "contactId":J
    .end local v8    # "size":I
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p3, v0, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0

    .line 512
    .restart local v8    # "size":I
    :cond_1
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 402
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 404
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->allCheck(Z)V

    .line 408
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->restoreListState(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 409
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->updateButtonState()V

    .line 410
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;

    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "emptyView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 412
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->restoreMultiChoiceList()V

    .line 419
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 400
    return-void

    .line 414
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public doOnContentChanged()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 465
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->mInflater:Landroid/view/LayoutInflater;

    .line 466
    const v5, 0x7f040025

    .line 465
    invoke-static {v3, v4, v5, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->create(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;

    move-result-object v2

    .line 468
    .local v2, "itemView":Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
    const v3, 0x7f0e008a

    .line 467
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 469
    .local v1, "check":Landroid/widget/CheckedTextView;
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setCheckable(Landroid/widget/Checkable;)V

    .line 471
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;-><init>()V

    .line 473
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
    const v3, 0x7f0e0086

    .line 472
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    .line 475
    const v3, 0x7f0e0083

    .line 474
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/QuickContactBadge;

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mPhotoView:Landroid/widget/QuickContactBadge;

    .line 477
    const v3, 0x7f0e0087

    .line 476
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    .line 479
    const v3, 0x7f0e0089

    .line 478
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    .line 481
    const v3, 0x7f0e0088

    .line 480
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    .line 483
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setTag(Ljava/lang/Object;)V

    .line 484
    return-object v2
.end method
