.class final Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.source "LinkContactsSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuggestionItemListAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_HEADER:I = 0x1

.field private static final ITEM_VIEW_TYPE_SUBTITLE:I = 0x0

.field private static final ITEM_VIEW_TYPE_SUGGESTION:I = 0x2

.field private static final ITME_VIEW_TYPE_NUMBER:I = 0x3


# instance fields
.field private mSuggestionsCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    .line 303
    const v0, 0x7f040053

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 294
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 302
    return-void
.end method

.method private isHeaderView(I)Z
    .locals 5
    .param p1, "aPosition"    # I

    .prologue
    const/4 v4, 0x0

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "countLength":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "length$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 529
    .local v1, "length":I
    add-int/lit8 v3, p1, -0x1

    if-ne v0, v3, :cond_0

    .line 530
    const/4 v3, 0x1

    return v3

    .line 532
    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    .line 535
    .end local v1    # "length":I
    .end local v2    # "length$iterator":Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method private setListItemLinked(ILcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)V
    .locals 6
    .param p1, "aPosition"    # I
    .param p2, "cache"    # Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    .prologue
    .line 492
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 494
    .local v0, "contactId":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 494
    if-eqz v1, :cond_1

    .line 496
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 491
    .end local v0    # "contactId":I
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local v0    # "contactId":I
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 318
    return-void
.end method


# virtual methods
.method protected bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    .line 452
    .local v6, "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    .line 453
    const/4 v1, 0x3

    invoke-interface {p3, v1, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 458
    :goto_0
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    iget v10, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 459
    .local v10, "size":I
    if-eqz v10, :cond_2

    .line 460
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v1

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v0, v1, v11, v10}, Landroid/widget/TextView;->setText([CII)V

    .line 465
    :goto_1
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 466
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 465
    const/4 v3, 0x2

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 469
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 470
    .local v8, "cid":J
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    .line 471
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v2

    .line 470
    invoke-static {v0, v8, v9, v1, v2}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getContactAccount(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z

    .line 472
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 473
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get6(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 484
    .local v7, "position":I
    :goto_3
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0, v7, v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->setListItemLinked(ILcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)V

    .line 486
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e001f

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 448
    .end local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    .end local v7    # "position":I
    .end local v8    # "cid":J
    .end local v10    # "size":I
    :cond_0
    return-void

    .line 456
    .restart local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    :cond_1
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto/16 :goto_0

    .line 462
    .restart local v10    # "size":I
    :cond_2
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 475
    .restart local v8    # "cid":J
    :cond_3
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get6(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 482
    :cond_4
    const/4 v7, -0x1

    .restart local v7    # "position":I
    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 514
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)V

    .line 512
    return-void
.end method

.method public doOnContentChanged()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 334
    return v0

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->isHeaderView(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 354
    :cond_0
    return v1

    .line 356
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)V

    .line 433
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    const v2, 0x7f0e00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 435
    const v2, 0x7f0e00d0

    .line 434
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;

    .line 436
    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/view/View;)Landroid/view/View;

    .line 437
    const v2, 0x7f0e0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 438
    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 439
    const v2, 0x7f0e00e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 440
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    .line 443
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 444
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 372
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 374
    .local v10, "headerId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    .line 375
    invoke-virtual/range {p0 .. p3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 376
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 378
    const v3, 0x7f040055

    const/4 v4, 0x0

    .line 377
    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 379
    .local v13, "v":Landroid/view/View;
    const v2, 0x7f0e00e3

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 380
    .local v15, "view":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 381
    const v2, 0x7f090287

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :goto_0
    return-object v13

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 384
    const v4, 0x7f090286

    .line 383
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    .end local v13    # "v":Landroid/view/View;
    .end local v15    # "view":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040054

    .line 390
    const/4 v4, 0x0

    .line 389
    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 391
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 393
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 392
    const v4, 0x7f0901ab

    .line 391
    invoke-virtual {v2, v4, v3}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v12, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)V

    .line 396
    .local v12, "item":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    const v2, 0x7f0e00bc

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 399
    const v2, 0x7f0e00d0

    .line 398
    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-static {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;

    .line 400
    const v2, 0x7f0e0087

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/view/View;)Landroid/view/View;

    .line 401
    const v2, 0x7f0e0089

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 402
    const v2, 0x7f0e0088

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v12, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-set1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 403
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 404
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get4(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get5(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v3

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 407
    const/4 v5, 0x2

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 412
    .local v8, "cid":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    .line 413
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v4

    .line 412
    invoke-static {v2, v8, v9, v3, v4}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getContactAccount(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z

    .line 414
    invoke-virtual {v14, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    return-object v14
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    const v7, 0x7f0e001f

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 541
    .local v5, "position":I
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 542
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    .line 541
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 543
    .local v4, "itemView":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 544
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    .line 543
    if-eqz v7, :cond_0

    .line 545
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;

    .line 546
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 548
    .local v6, "viewId":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 549
    .local v1, "cursor":Landroid/database/Cursor;
    packed-switch v6, :pswitch_data_0

    .line 539
    .end local v0    # "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v6    # "viewId":I
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v0    # "cache":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "viewId":I
    :pswitch_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 553
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 554
    .local v2, "contactId":J
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 555
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 556
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f0200c0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v9, 0x7f0901aa

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 558
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v9, 0x7f0901a8

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 566
    .end local v2    # "contactId":J
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)V

    goto :goto_0

    .line 560
    .restart local v2    # "contactId":J
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f0200be

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v9, 0x7f0901a9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 563
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;

    const v9, 0x7f0901a7

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00e1
        :pswitch_0
    .end packed-switch
.end method
