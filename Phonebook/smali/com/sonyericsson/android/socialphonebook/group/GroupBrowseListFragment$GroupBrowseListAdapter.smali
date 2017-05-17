.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupBrowseListAdapter"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mGroupPhotoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPhoneNumberMandatory:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionVisible:Z

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;J)Landroid/net/Uri;
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 534
    const-string/jumbo v0, "GroupBrowseListAdapter"

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->TAG:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    .line 548
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 549
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->isPhoneNumberMandatory(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mIsPhoneNumberMandatory:Z

    .line 546
    return-void
.end method

.method private bindHeaderView(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;)V
    .locals 6
    .param p1, "entry"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    .param p2, "viewCache"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;

    .prologue
    .line 744
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 745
    .local v1, "accountTypeManager":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getDataSet()Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 749
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 749
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    const v4, 0x7f090278

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 752
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    .line 754
    sget-object v4, Lcom/android/contacts/photomanager/ContactPhotoManager;->ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 752
    invoke-virtual {v3, v4}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 755
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    return-void

    .line 758
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVideoGroupCallingAccount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 759
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z

    move-result v3

    .line 758
    if-eqz v3, :cond_1

    .line 760
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    const v4, 0x7f0903c0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 764
    :goto_0
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    return-void

    .line 762
    :cond_1
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getGroupUriFromId(J)Landroid/net/Uri;
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    .line 768
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedGroup(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    .locals 19
    .param p1, "position"    # I

    .prologue
    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "Failed to getItem, cursor is null"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v2, 0x0

    return-object v2

    .line 625
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "Failed to getItem, cursor is closed"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v2, 0x0

    return-object v2

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to getItem, cursor cannot move to position:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v2, 0x0

    return-object v2

    .line 633
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "dataSet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 638
    .local v6, "groupId":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mIsPhoneNumberMandatory:Z

    if-eqz v2, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const-string/jumbo v18, "summ_phones"

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 644
    .local v10, "memberCount":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 645
    .local v16, "resourcePackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v8, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 649
    const/4 v11, 0x0

    .line 650
    .local v11, "groupPhoto":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mGroupPhotoMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mGroupPhotoMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mGroupPhotoMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "groupPhoto":Landroid/graphics/Bitmap;
    check-cast v11, Landroid/graphics/Bitmap;

    .line 657
    :cond_3
    add-int/lit8 v15, p1, -0x1

    .line 658
    .local v15, "previousIndex":I
    const/4 v9, 0x1

    .line 659
    .local v9, "isFirstGroupInAccount":Z
    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 661
    .local v12, "previousGroupAccountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 662
    .local v13, "previousGroupAccountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 664
    .local v14, "previousGroupDataSet":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 664
    if-eqz v2, :cond_4

    .line 666
    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 664
    if-eqz v2, :cond_4

    .line 667
    const/4 v9, 0x0

    .line 671
    .end local v12    # "previousGroupAccountName":Ljava/lang/String;
    .end local v13    # "previousGroupAccountType":Ljava/lang/String;
    .end local v14    # "previousGroupDataSet":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;

    invoke-direct/range {v2 .. v11}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILandroid/graphics/Bitmap;)V

    return-object v2

    .line 641
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "isFirstGroupInAccount":Z
    .end local v10    # "memberCount":I
    .end local v15    # "previousIndex":I
    .end local v16    # "resourcePackage":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .restart local v10    # "memberCount":I
    goto/16 :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 617
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedGroup()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 589
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    .line 590
    :cond_0
    return v6

    .line 589
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "index":I
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 595
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 596
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 597
    .local v0, "groupId":J
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v3

    .line 598
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 599
    return v2

    .line 601
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "groupId":J
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    return v6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 677
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;

    move-result-object v1

    .line 680
    .local v1, "entry":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    if-eqz p2, :cond_1

    .line 681
    move-object v3, p2

    .line 682
    .local v3, "result":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;

    .line 688
    .local v4, "viewCache":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;
    :goto_0
    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    .line 689
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to getView: viewCache is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", entry is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-object v8

    .line 684
    .end local v3    # "result":Landroid/view/View;
    .end local v4    # "viewCache":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040081

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 685
    .restart local v3    # "result":Landroid/view/View;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;

    invoke-direct {v4, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;-><init>(Landroid/view/View;)V

    .line 686
    .restart local v4    # "viewCache":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->isFirstGroupInAccount()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 694
    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->bindHeaderView(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;)V

    .line 695
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 696
    if-nez p1, :cond_5

    .line 702
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getGroupId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v2

    .line 713
    .local v2, "groupUri":Landroid/net/Uri;
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->setUri(Landroid/net/Uri;)V

    .line 714
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, "("

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getMemberCount()I

    move-result v7

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 716
    const-string/jumbo v7, ")"

    .line 715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getGroupPhoto()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_3

    .line 720
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupContainer:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    .line 723
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 725
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 726
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    .line 727
    const v6, 0x1010433

    const v7, 0x7f080031

    .line 726
    invoke-static {v5, v6, v7}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 732
    .local v0, "color":I
    :goto_2
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    .end local v0    # "color":I
    :cond_4
    return-object v3

    .line 704
    .end local v2    # "groupUri":Landroid/net/Uri;
    :cond_5
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 707
    :cond_6
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v5, v4, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 729
    .restart local v2    # "groupUri":Landroid/net/Uri;
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x1010036

    .line 730
    const v7, 0x7f08002b

    .line 729
    invoke-static {v5, v6, v7}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_2
.end method

.method public isPhoneNumberMandatory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string/jumbo v0, "com.sonyericsson.android.socialphonebook.action.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const-string/jumbo v0, "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 782
    if-nez v0, :cond_0

    .line 784
    const-string/jumbo v0, "com.sonyericsson.android.socialphonebook.action.PICK_CONFERENCE_CALL_PARTICIPANTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 782
    if-eqz v0, :cond_1

    .line 786
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 788
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 553
    if-eqz p1, :cond_0

    .line 554
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getSelectedGroupPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 560
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 567
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;

    move-result-object v0

    .line 568
    .local v0, "firstItem":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getGroupId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 573
    .end local v0    # "firstItem":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->notifyDataSetChanged()V

    .line 552
    return-void
.end method

.method public setGroupPhotoMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "groupPhotoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mGroupPhotoMap:Ljava/util/HashMap;

    .line 606
    return-void
.end method

.method public setSelectedGroup(Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 580
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->mSelectionVisible:Z

    .line 576
    return-void
.end method
