.class final Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;
.source "MultiChoiceSendVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulitiChoiceSendListAdapter"
.end annotation


# instance fields
.field private mMySelfCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method private getAccountDisplayLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 517
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    const-string/jumbo v5, "account"

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 518
    .local v0, "am":Landroid/accounts/AccountManager;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 519
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 520
    .local v2, "auths":[Landroid/accounts/AuthenticatorDescription;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 521
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    if-eqz p1, :cond_0

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 520
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    return-object p1
.end method

.method private getRealPosition(I)I
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 414
    return p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private setMyselfCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    .line 316
    return-void
.end method


# virtual methods
.method protected final bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const v10, 0x7f0901f0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;

    .line 452
    .local v2, "cache":Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 453
    .local v4, "cid":J
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/AccountInfo;

    .line 454
    .local v1, "account":Lcom/sonyericsson/android/socialphonebook/AccountInfo;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_1

    .line 455
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get4(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 456
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 464
    :goto_0
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    :goto_1
    return-void

    .line 461
    :cond_0
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 465
    :cond_1
    if-nez v1, :cond_2

    .line 466
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 471
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "accType":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccountType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 474
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    const v7, 0x7f0900c4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 477
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    .line 479
    const v7, 0x7f0200d3

    .line 478
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 480
    :cond_3
    const-string/jumbo v6, "com.sonyericsson.adncontacts"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 481
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getAccountDisplayLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    .line 484
    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getAccountSmallIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 486
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_4

    .line 487
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 490
    :cond_4
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 492
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v0, :cond_7

    .line 493
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    .line 496
    invoke-static {v6, v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getAccountSmallIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 498
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_6

    .line 499
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 502
    :cond_6
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 505
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mSubLineView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 392
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 393
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;

    .line 394
    .local v1, "cursor":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->-get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->setMyselfCursor(Landroid/database/Cursor;)V

    .line 395
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;->-get0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->changeCursor(Landroid/database/Cursor;)V

    .line 404
    .end local v1    # "cursor":Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->restoreListState(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    .line 391
    return-void

    .line 397
    :cond_0
    move-object v0, p1

    .line 398
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->setMyselfCursor(Landroid/database/Cursor;)V

    .line 399
    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public doOnContentChanged()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->startQuery()V

    .line 353
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->getCount()I

    move-result v0

    .line 343
    .local v0, "superCount":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    return-object v0

    .line 428
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "aPosition"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 440
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 443
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "aPosition"    # I
    .param p2, "aConvertView"    # Landroid/view/View;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 364
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mMySelfCursor:Landroid/database/Cursor;

    .line 370
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getRealPosition(I)I

    move-result v1

    .line 371
    .local v1, "realPosition":I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "realPosition":I
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 377
    .restart local v1    # "realPosition":I
    :cond_1
    if-nez p2, :cond_2

    .line 378
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, p3}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 382
    .local v2, "v":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 383
    return-object v2

    .line 380
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    move-object v2, p2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "aPosition"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
