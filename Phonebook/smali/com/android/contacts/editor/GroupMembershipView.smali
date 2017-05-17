.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;,
        Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
    }
.end annotation


# static fields
.field private static final CREATE_NEW_GROUP_GROUP_ID:I = 0x85


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedNewGroup:Z

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mState:Lcom/android/contacts/common/model/RawContactDelta;


# direct methods
.method static synthetic -set0(Lcom/android/contacts/editor/GroupMembershipView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method private createAdapterFromGroupMetadata()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 311
    new-instance v7, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f04008d

    .line 311
    invoke-direct {v7, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    .line 314
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 315
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 316
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "accountName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "accountType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "dataSet":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 319
    if-eqz v7, :cond_0

    .line 321
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 322
    .local v4, "groupId":J
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .line 323
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 322
    if-eqz v7, :cond_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->translateTitle()Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "title":Ljava/lang/String;
    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v2

    .line 328
    .local v2, "checked":Z
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v8, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v8, v4, v5, v6, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v7, v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "checked":Z
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v8, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v10, 0x85

    .line 334
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v12, 0x7f090161

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 333
    invoke-direct {v8, v10, v11, v9, v13}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v7, v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method private createNewGroup()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 428
    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 434
    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 436
    new-instance v4, Lcom/android/contacts/editor/GroupMembershipView$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/GroupMembershipView$1;-><init>(Lcom/android/contacts/editor/GroupMembershipView;)V

    .line 431
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 425
    return-void
.end method

.method private hasMembership(J)Z
    .locals 7
    .param p1, "groupId"    # J

    .prologue
    const/4 v6, 0x1

    .line 407
    iget-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    return v6

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    const-string/jumbo v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 412
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 413
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "values$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 414
    .local v2, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v1

    .line 416
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 417
    return v6

    .line 422
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "values$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private isGroupChecked(J)Z
    .locals 7
    .param p1, "groupId"    # J

    .prologue
    .line 396
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 397
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 399
    .local v2, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 400
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    return v3

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private translateTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "resourcePackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateSelectedItems()V
    .locals 12

    .prologue
    .line 370
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    const-string/jumbo v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 372
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 373
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 374
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v3

    .line 375
    .local v3, "groupId":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 376
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 375
    if-eqz v8, :cond_0

    .line 377
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 378
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 385
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "groupId":Ljava/lang/Long;
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 386
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v8, v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 387
    .local v7, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    .line 388
    .local v4, "groupId":J
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 385
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 389
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 390
    .restart local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    goto :goto_2

    .line 368
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v4    # "groupId":J
    .end local v7    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_5
    return-void
.end method

.method private updateView()V
    .locals 12

    .prologue
    .line 207
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 209
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 210
    return-void

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "accountHasGroups":Z
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 215
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 220
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "dataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 223
    if-eqz v8, :cond_2

    .line 225
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 226
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 227
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 228
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 238
    :goto_1
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2

    .line 239
    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    .line 238
    if-eqz v8, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->translateTitle()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    const-string/jumbo v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    .end local v7    # "title":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 230
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 231
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_1

    .line 233
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 253
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    :cond_6
    if-nez v0, :cond_7

    .line 254
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 255
    return-void

    .line 258
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 259
    const v8, 0x7f0e01b9

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 260
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 265
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 271
    iget-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v8, :cond_a

    .line 273
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_9
    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 274
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 206
    :cond_a
    return-void

    .line 267
    :cond_b
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 273
    :cond_c
    const/4 v8, 0x1

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 280
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createAdapterFromGroupMetadata()V

    .line 287
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 288
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 289
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 291
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 293
    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/contacts/common/util/ViewUtil;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 294
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 296
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 297
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 298
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 299
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 300
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 342
    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 338
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p1

    .line 348
    check-cast v2, Landroid/widget/ListView;

    .line 349
    .local v2, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 351
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 353
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    .line 354
    return-void

    .line 357
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateSelectedItems()V

    .line 362
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 347
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 183
    iget-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createAdapterFromGroupMetadata()V

    .line 188
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 189
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 190
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateSelectedItems()V

    .line 193
    .end local v0    # "pos":I
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 179
    return-void
.end method

.method public setKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 175
    const v1, 0x7f0e0137

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "kindTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 2
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    const/4 v1, 0x0

    .line 197
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    .line 198
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 201
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 203
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 196
    return-void
.end method
