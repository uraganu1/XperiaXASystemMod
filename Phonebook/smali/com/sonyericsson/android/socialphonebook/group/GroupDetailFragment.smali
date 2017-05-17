.class public Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;
.super Landroid/app/ListFragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_DATA_SET:Ljava/lang/String; = "accountDataSet"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final KEY_CONTACT_IDS:Ljava/lang/String; = "contactIds"

.field private static final KEY_SEND_PHONE_NUMBER_LIST:Ljava/lang/String; = "sendPhoneNumberlist"

.field private static final LOADER_ACCOUNT_CONTACTS:I = 0x3

.field private static final LOADER_MEMBERS:I = 0x1

.field private static final LOADER_METADATA:I = 0x6

.field private static final LOADER_RAWCONTACTS:I = 0x2

.field static final MODE_PICK_NEW_MEMBER:I = 0x2

.field private static final MODE_SEND_GROUP_EMAIL:I = 0x4

.field private static final MODE_SEND_GROUP_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mEmailMemberCount:I

.field private mGroupEmailCountView:Landroid/widget/TextView;

.field private mGroupEmailHeader:Landroid/view/View;

.field private mGroupEmailTitleView:Landroid/widget/TextView;

.field private mGroupEmptyView:Landroid/widget/TextView;

.field private mGroupId:J

.field private mGroupMemberIdList:[J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberRawIdList:[J

.field private mGroupMessageCountView:Landroid/widget/TextView;

.field private mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

.field private mGroupMessageTitleView:Landroid/widget/TextView;

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMsgHeader:Landroid/view/View;

.field private mGroupName:Ljava/lang/String;

.field private final mGroupRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsAccountEmpty:Z

.field private mIsEmailCapable:Z

.field private mIsReadOnly:Z

.field private mIsSmsCapable:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;

.field private mMessageMemberCount:I

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupEditable:Z

.field private mOptionsMenuGroupPresent:Z

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mSendEmailHeader:Landroid/view/View;

.field private mSendEmailHeaderImage:Landroid/widget/ImageView;

.field private mSendMessageHeader:Landroid/view/View;

.field private mSendMessageHeaderImage:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsEmailCapable:Z

    return v0
.end method

.method static synthetic -get14(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsSmsCapable:Z

    return v0
.end method

.method static synthetic -get15(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -get16(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mMessageMemberCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mEmailMemberCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberRawIdList:[J

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mEmailMemberCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsAccountEmpty:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mMessageMemberCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "groupMetaDataCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->closeLoadingDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->sendAddMemberRequest(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setEnabledEmailHeader(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setEnabledMessageHeader(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startAccountContactsLoader()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->updateHeaders(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->updateMemberList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->TAG:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsAccountEmpty:Z

    .line 522
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 643
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 693
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    .line 692
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 975
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 171
    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "groupMetaDataCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 557
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    .line 558
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    .line 559
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupId:J

    .line 560
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 561
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsReadOnly:Z

    .line 565
    const/16 v4, 0xa

    .line 564
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "resourcePackage":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 570
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;

    if-eqz v4, :cond_1

    .line 571
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;->onGroupLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 576
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "accountTypeString":Ljava/lang/String;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "dataSet":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method private closeLoadingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 512
    .local v0, "progress":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 515
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 509
    .end local v0    # "progress":Landroid/app/ProgressDialog;
    :cond_1
    return-void
.end method

.method private isWritableAccount()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 447
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 448
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 449
    .local v3, "mAvailableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v4, 0x0

    .line 450
    .local v4, "writable":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-virtual {v0, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 452
    .local v4, "writable":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "anAccount$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 453
    .local v1, "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    const-string/jumbo v5, "com.sonyericsson.sdncontacts"

    iget-object v6, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 455
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    .end local v1    # "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 459
    .restart local v1    # "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 459
    if-eqz v5, :cond_2

    .line 461
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 462
    return v7

    .line 464
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 465
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 464
    if-eqz v5, :cond_2

    .line 466
    return v7

    .line 470
    .end local v1    # "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method private sendAddMemberRequest(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1026
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    const/4 v5, 0x0

    .line 1028
    .local v5, "rawIds":[J
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v5, v1, [J

    .line 1029
    .local v5, "rawIds":[J
    const/4 v9, 0x0

    .line 1031
    .local v9, "index":I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1034
    :cond_2
    const/4 v1, 0x0

    .line 1033
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v5, v9

    .line 1035
    add-int/lit8 v9, v9, 0x1

    .line 1036
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1041
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1044
    :goto_1
    if-eqz v5, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1046
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1047
    const-string/jumbo v8, "saveCompleted"

    move-object v6, v4

    .line 1045
    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 1049
    .local v10, "updateIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1038
    .end local v10    # "updateIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1040
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1041
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1040
    throw v1
.end method

.method private setEnabledEmailHeader(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailCountView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1016
    return-void
.end method

.method private setEnabledMessageHeader(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageCountView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1002
    return-void
.end method

.method private showNoContactsDialogFragment()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    .line 434
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;

    move-result-object v0

    .line 436
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 433
    return-void
.end method

.method private startAccountContactsLoader()V
    .locals 4

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 685
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 684
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 636
    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 488
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 489
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 487
    return-void
.end method

.method private startGroupRawContactLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 4
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountDataSet"    # Ljava/lang/String;
    .param p4, "contactIds"    # [J

    .prologue
    const/4 v3, 0x2

    .line 965
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 967
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 968
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string/jumbo v1, "accountName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string/jumbo v1, "accountDataSet"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string/jumbo v1, "contactIds"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 972
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 964
    return-void
.end method

.method private startLoadingDialog(I)V
    .locals 6
    .param p1, "stringId"    # I

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->closeLoadingDialog()V

    .line 503
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 503
    const/4 v3, 0x0

    .line 504
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 503
    invoke-static {v1, v3, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 505
    .local v0, "dlg":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 501
    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "accountTypeString"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 599
    .local v1, "manager":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 603
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 609
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$7;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Lcom/android/contacts/common/model/account/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHeaders(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 897
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 898
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 899
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 900
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 901
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 907
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 895
    :cond_2
    :goto_0
    return-void

    .line 910
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 912
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 914
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private updateMemberList(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 732
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    .line 733
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberRawIdList:[J

    .line 735
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 737
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    .line 738
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberRawIdList:[J

    .line 739
    const/4 v2, 0x0

    .line 741
    .local v2, "index":I
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "contactId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 745
    const/4 v4, 0x1

    .line 744
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "rawContactId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberRawIdList:[J

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 748
    add-int/lit8 v2, v2, 0x1

    .line 749
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 731
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "rawContactId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    .line 753
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberRawIdList:[J

    .line 754
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to update Member List!"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 720
    if-gtz p1, :cond_1

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 922
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method public isGroupDeletable()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isWritableGroup()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupPresent()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 363
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 362
    :cond_0
    return v0
.end method

.method public isWritableGroup()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsReadOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startGroupMetadataLoader()V

    .line 477
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    .line 934
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 935
    packed-switch p1, :pswitch_data_0

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 938
    :pswitch_0
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 937
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 939
    .local v2, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 940
    const v5, 0x7f090203

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startLoadingDialog(I)V

    .line 941
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 942
    .local v0, "contactIds":[J
    const/4 v1, 0x0

    .line 943
    .local v1, "index":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 944
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 948
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    .line 949
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 948
    invoke-direct {p0, v5, v6, v7, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startGroupRawContactLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0

    .line 955
    .end local v0    # "contactIds":[J
    .end local v1    # "index":I
    .end local v2    # "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "uri$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-virtual {v5, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 177
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 178
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    .line 179
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsSmsCapable:Z

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->setUpdateListner(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;)V

    .line 175
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 323
    :sswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->onClickSendMessage()V

    goto :goto_0

    .line 326
    :sswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->onClickSendEmail()V

    goto :goto_0

    .line 329
    :sswitch_2
    const v2, 0x7f0e001f

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, "position":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 332
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to get position from view tag."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "pos":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getViewContactIntentById(J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x7f0e0168 -> :sswitch_1
        0x7f0e016c -> :sswitch_0
        0x7f0e0170 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 376
    const v0, 0x7f110006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 375
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 245
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setHasOptionsMenu(Z)V

    .line 246
    const v3, 0x7f040083

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 247
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 248
    const v4, 0x7f0e0165

    .line 247
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    .line 251
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsSmsCapable:Z

    if-eqz v3, :cond_0

    .line 252
    const v3, 0x7f040085

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    .line 254
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMsgHeader:Landroid/view/View;

    const v4, 0x7f0e016c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    .line 255
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    .line 256
    const v4, 0x7f0e016e

    .line 255
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageTitleView:Landroid/widget/TextView;

    .line 257
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    .line 258
    const v4, 0x7f0e016f

    .line 257
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageCountView:Landroid/widget/TextView;

    .line 259
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    .line 260
    const v4, 0x7f0e016d

    .line 259
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeaderImage:Landroid/widget/ImageView;

    .line 262
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "brandName":Ljava/lang/String;
    const-string/jumbo v3, "kddi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .end local v0    # "brandName":Ljava/lang/String;
    :cond_0
    :goto_0
    const v3, 0x7f040084

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    .line 275
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    .line 276
    const v4, 0x7f0e01c0

    .line 275
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    .local v2, "smallHeader":Landroid/widget/TextView;
    const v3, 0x7f09026f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailHeader:Landroid/view/View;

    const v4, 0x7f0e0168

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    .line 280
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    .line 282
    const v4, 0x7f0e016a

    .line 281
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailTitleView:Landroid/widget/TextView;

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    const v4, 0x7f0e016b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmailCountView:Landroid/widget/TextView;

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeader:Landroid/view/View;

    .line 285
    const v4, 0x7f0e0169

    .line 284
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendEmailHeaderImage:Landroid/widget/ImageView;

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0e0166

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupEmptyView:Landroid/widget/TextView;

    .line 288
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    .line 289
    .local v1, "isUsingTwoPanes":Z
    if-eqz v1, :cond_3

    .line 290
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget-object v6, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    .line 290
    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$6;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$6;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->setCursorListener(Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$CursorListener;)V

    .line 303
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    if-eqz p3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    .line 307
    const-string/jumbo v4, "sendPhoneNumberlist"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 306
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->updateSendPhoneNumberList(Ljava/util/ArrayList;)V

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v3

    .line 266
    .end local v1    # "isUsingTwoPanes":Z
    .end local v2    # "smallHeader":Landroid/widget/TextView;
    .restart local v0    # "brandName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mSendMessageHeader:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "brandName":Ljava/lang/String;
    .restart local v1    # "isUsingTwoPanes":Z
    .restart local v2    # "smallHeader":Landroid/widget/TextView;
    :cond_3
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 214
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 215
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 218
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 212
    :cond_0
    return-void
.end method

.method public onDone(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->onDoneButtonPressed(Ljava/util/ArrayList;)V

    .line 1055
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 410
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 383
    :pswitch_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsAccountEmpty:Z

    if-eqz v3, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->showNoContactsDialogFragment()V

    goto :goto_0

    .line 386
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startPicker(I)V

    goto :goto_0

    .line 390
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "group_uri"

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 393
    return v6

    .line 396
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    const/4 v1, 0x0

    .line 397
    .local v1, "fEndActivity":Z
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    const/4 v1, 0x0

    .line 405
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 404
    invoke-static {v4, v5, v3, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->newInstance(JLjava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;

    move-result-object v0

    .line 406
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 407
    return v6

    .line 402
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/group/GroupDeletionDialogFragment;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 381
    :pswitch_data_0
    .packed-switch 0x7f0e0257
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->closeLoadingDialog()V

    .line 225
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 223
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 416
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    .line 417
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->isWritableAccount()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    .line 419
    const v3, 0x7f0e0257

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 420
    .local v0, "addMember":Landroid/view/MenuItem;
    const v3, 0x7f0e0258

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 421
    .local v2, "editMenu":Landroid/view/MenuItem;
    const v3, 0x7f0e0259

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 424
    .local v1, "deleteMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 425
    :cond_0
    return-void

    .line 417
    .end local v0    # "addMember":Landroid/view/MenuItem;
    .end local v1    # "deleteMenu":Landroid/view/MenuItem;
    .end local v2    # "editMenu":Landroid/view/MenuItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 424
    .restart local v0    # "addMember":Landroid/view/MenuItem;
    .restart local v1    # "deleteMenu":Landroid/view/MenuItem;
    .restart local v2    # "editMenu":Landroid/view/MenuItem;
    :cond_2
    if-eqz v1, :cond_0

    .line 428
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 234
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsSmsCapable:Z

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mMessageMemberCount:I

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    .line 235
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setEnabledMessageHeader(Z)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEmailIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsEmailCapable:Z

    .line 240
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mEmailMemberCount:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mIsEmailCapable:Z

    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->setEnabledEmailHeader(Z)V

    .line 229
    return-void

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMessageHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->getSendPhoneNumberList()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "sendPhoneNumberlist"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 349
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 350
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 355
    .local v0, "isUsingTwoPanes":Z
    if-nez v0, :cond_1

    .line 356
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->refreshContactPhotos()V

    .line 345
    .end local v0    # "isUsingTwoPanes":Z
    :cond_1
    return-void
.end method

.method public setGroup(Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 473
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;

    .line 492
    return-void
.end method

.method startPicker(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 759
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 760
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "group_account_type"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string/jumbo v2, "group_account_name"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string/jumbo v2, "group_account_data_set"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string/jumbo v2, "has_tab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 765
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    array-length v2, v2

    if-lez v2, :cond_0

    .line 766
    const-string/jumbo v2, "group_member_ids"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->mGroupMemberIdList:[J

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 768
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_1
    return-void

    .line 770
    :pswitch_0
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot found Acitivity to handle intent!"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 768
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
