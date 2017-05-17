.class public Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment$SelectAccountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$1;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$3;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;
    }
.end annotation


# static fields
.field private static final CREATE_GROUP:I = 0x1

.field private static final KEY_ACCOUNT_DATA_SET:Ljava/lang/String; = "accountdataset"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountname"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accounttype"

.field private static final KEY_CONTACT_IDS:Ljava/lang/String; = "contactIds"

.field public static final KEY_INSERTED_GROUPURI:Ljava/lang/String; = "group_uri"

.field private static final KEY_IS_READ_ONLY:Ljava/lang/String; = "isreadonly"

.field private static final KEY_RAW_CONTACT_IDS:Ljava/lang/String; = "rawcontactIds"

.field private static final LOADER_ACCOUNT_CONTACTS:I = 0x5

.field private static final LOADER_DATA:I = 0x3

.field private static final LOADER_MEMBERS:I = 0x1

.field private static final LOADER_METADATA:I = 0x0

.field private static final LOADER_PHOTO_RINGTONE:I = 0x4

.field private static final LOADER_RAWCONTACTS:I = 0x2

.field public static final RINGTONE_PICKED:I = 0xbcf


# instance fields
.field private TAG:Ljava/lang/String;

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

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAddGroupMembersButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private mCustomRingtone:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/Button;

.field private mEdit:Landroid/widget/EditText;

.field private mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

.field private mGroupCustomView:Landroid/widget/RelativeLayout;

.field private final mGroupDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupEdit:Landroid/widget/LinearLayout;

.field private mGroupId:J

.field private mGroupMemberLabel:Landroid/widget/TextView;

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

.field private mGroupMemberListStore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberListStoreBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mGroupName:Ljava/lang/String;

.field private mGroupPhotoBlob:[B

.field private final mGroupPhotoRingtoneLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

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

.field private mGroupUri:Landroid/net/Uri;

.field private mHasSetPhoto:Z

.field private mIsAccountEmpty:Z

.field private mIsAddingMembersAllowed:Z

.field private mIsReadOnly:Z

.field private mIsTablet:Z

.field private mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

.field private mManagedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersistTask:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

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

.field private mReadOnlyAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAddingMembersAllowed:Z

    return v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic -get14(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupId:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStoreBackup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupPhotoBlob:[B

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAccountEmpty:Z

    return p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAddingMembersAllowed:Z

    return p1
.end method

.method static synthetic -set5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)[J
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getRawContactId()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->addGroupMember(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateGroupData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateGroupMemberList()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "customRingtone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateRingtoneTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->bindPhotoHandler()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->enableAddMemberButton(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->onSaveCompleted(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setLayoutVisible()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startAccountContactsLoader()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startGroupPhotoRingtoneLoader()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 119
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->TAG:Ljava/lang/String;

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mHasSetPhoto:Z

    .line 202
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStoreBackup:Ljava/util/ArrayList;

    .line 204
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mManagedDialogs:Ljava/util/ArrayList;

    .line 217
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAddingMembersAllowed:Z

    .line 219
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAccountEmpty:Z

    .line 632
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 696
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 816
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$3;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 863
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$4;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    .line 862
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupPhotoRingtoneLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1073
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$5;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1625
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$6;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    .line 1624
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 117
    return-void
.end method

.method private addGroupMember(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 657
    if-eqz p1, :cond_3

    .line 659
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [J

    .line 661
    .local v10, "rawIds":[J
    const/4 v9, 0x0

    .line 664
    .local v9, "i":I
    :cond_0
    const/4 v0, 0x0

    .line 663
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 665
    .local v2, "rawContactId":J
    aput-wide v2, v10, v9

    .line 667
    const/4 v0, 0x2

    .line 666
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 669
    .local v4, "contactId":J
    const/4 v0, 0x1

    .line 668
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0900a0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 673
    :cond_1
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 674
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 673
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;-><init>(Ljava/lang/String;JJJLandroid/net/Uri;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v9, v9, 0x1

    .line 676
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    if-eqz v10, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateGroupMemberList()V

    .line 679
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startGroupDataLoader([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "rawContactId":J
    .end local v4    # "contactId":J
    .end local v9    # "i":I
    .end local v10    # "rawIds":[J
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_3
    return-void

    .line 682
    :catchall_0
    move-exception v0

    .line 683
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 682
    throw v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 903
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 904
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 905
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    .line 906
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    .line 907
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupId:J

    .line 908
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    .line 910
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "resourcePackage":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "title":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    .line 915
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 917
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 918
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 921
    :cond_0
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    .line 922
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 924
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 925
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 927
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setLayoutVisible()V

    .line 902
    .end local v0    # "resourcePackage":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v0    # "resourcePackage":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 921
    goto :goto_0
.end method

.method private bindPhotoHandler()V
    .locals 7

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mReadOnlyAccountTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mHasSetPhoto:Z

    if-eqz v0, :cond_0

    .line 959
    const/16 v4, 0xe

    .line 967
    .local v4, "mode":I
    :goto_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    .line 968
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    .line 969
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;

    .line 968
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 954
    return-void

    .line 961
    .end local v4    # "mode":I
    :cond_0
    const/4 v4, 0x4

    .restart local v4    # "mode":I
    goto :goto_0

    .line 964
    .end local v4    # "mode":I
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "mode":I
    goto :goto_0
.end method

.method private doAddMembers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 536
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "group_account_type"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string/jumbo v5, "group_account_name"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v5, "group_account_data_set"

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string/jumbo v5, "has_tab"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 543
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 544
    .local v0, "contactIds":[J
    const/4 v1, 0x0

    .line 545
    .local v1, "i":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "member$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 546
    .local v3, "member":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    iget-wide v6, v3, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    aput-wide v6, v0, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v3    # "member":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    :cond_0
    const-string/jumbo v5, "group_member_ids"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 551
    .end local v0    # "contactIds":[J
    .end local v1    # "i":I
    .end local v4    # "member$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 535
    return-void
.end method

.method private doPickRingtone()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    const-string/jumbo v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string/jumbo v3, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 571
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 572
    .local v2, "ringtoneUri":Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 573
    .local v1, "ringtone":Landroid/media/Ringtone;
    if-nez v1, :cond_0

    .line 574
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 582
    .end local v1    # "ringtone":Landroid/media/Ringtone;
    :cond_0
    :goto_0
    const-string/jumbo v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    const/16 v3, 0xbcf

    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 559
    return-void

    .line 578
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_1
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private doSaveGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "groupLabel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const v1, 0x7f090274

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 521
    return-void

    .line 522
    :cond_0
    const-string/jumbo v1, "Favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const v1, 0x7f0902e3

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 525
    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mPersistTask:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

    if-eqz v1, :cond_2

    .line 528
    return-void

    .line 530
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mPersistTask:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mPersistTask:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 516
    return-void
.end method

.method private enableAddMemberButton(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAddGroupMembersButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAddGroupMembersButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAddGroupMembersButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAddGroupMembersButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    :cond_0
    return-void
.end method

.method private getAvailableAccounts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 392
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 394
    .local v3, "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v4, 0x0

    .line 395
    .local v4, "writable":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 397
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

    .line 398
    .local v1, "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 399
    const-string/jumbo v5, "com.sonyericsson.sdncontacts"

    iget-object v6, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 400
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v1    # "anAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-object v3
.end method

.method private getRawContactId()[J
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1182
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    :cond_0
    return-object v4

    .line 1183
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1184
    .local v1, "length":I
    new-array v2, v1, [J

    .line 1185
    .local v2, "out":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1186
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    iget-wide v4, v3, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    aput-wide v4, v2, v0

    .line 1185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    :cond_2
    return-object v2
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 2
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 589
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    .line 594
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateRingtoneTitle(Ljava/lang/String;)V

    .line 588
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    .line 936
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0e0176

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 940
    .local v3, "groupTitleView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0e013d

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 941
    .local v0, "accountIconView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    const v5, 0x7f0e013f

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 942
    .local v1, "accountNameView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 944
    const v4, 0x7f090278

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 945
    const v4, 0x7f0200d3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 931
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    .line 949
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    .line 948
    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 950
    .local v2, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v2, p0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onSaveCompleted(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1292
    if-eqz p1, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1295
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "group_uri"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1296
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 1298
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->finish()V

    .line 1291
    :goto_0
    return-void

    .line 1300
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mPersistTask:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PersistTask;

    goto :goto_0
.end method

.method private resetDefaultGroupPhoto()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mHasSetPhoto:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setImageToDefault()V

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mHasSetPhoto:Z

    .line 801
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->bindPhotoHandler()V

    .line 796
    :cond_0
    return-void
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mAccountName"    # Ljava/lang/String;
    .param p2, "mAccountType"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    .line 500
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    .line 501
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$8;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method private setLayoutVisible()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupEdit:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->initActionBar()V

    .line 513
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->bindPhotoHandler()V

    .line 510
    return-void
.end method

.method private showNoContactsDialogFragment()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    .line 449
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;

    move-result-object v0

    .line 451
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/NoContactsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 448
    return-void
.end method

.method private showSelectAccountDialogFragment()V
    .locals 3

    .prologue
    .line 456
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->newInstance()Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;

    move-result-object v0

    .line 457
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 455
    return-void
.end method

.method private startAccountContactsLoader()V
    .locals 4

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1619
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1618
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1617
    return-void
.end method

.method private startGroupDataLoader([J)V
    .locals 4
    .param p1, "rawContactIds"    # [J

    .prologue
    const/4 v3, 0x3

    .line 690
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "rawcontactIds"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 689
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1066
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1065
    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 810
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 808
    return-void
.end method

.method private startGroupPhotoRingtoneLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 854
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 855
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupPhotoRingtoneLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 855
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 853
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

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 624
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "accounttype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v1, "accountname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string/jumbo v1, "accountdataset"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string/jumbo v1, "contactIds"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 629
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupRawContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 621
    return-void
.end method

.method private updateGroupData(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 726
    if-eqz p1, :cond_6

    .line 728
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 730
    const/4 v3, 0x0

    .line 733
    .local v3, "hasUpdate":Z
    :cond_0
    const/4 v11, 0x0

    .line 732
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 735
    .local v8, "rawContactId":J
    const/4 v6, 0x0

    .line 737
    .local v6, "photoUri":Landroid/net/Uri;
    const/16 v11, 0xa

    .line 736
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 738
    .local v10, "tempPhotoUri":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 739
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 741
    .end local v6    # "photoUri":Landroid/net/Uri;
    :cond_1
    const-wide/16 v4, -0x1

    .line 743
    .local v4, "photoId":J
    const/16 v11, 0x9

    .line 742
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 744
    .local v7, "tempPhotoId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 745
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 747
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aGroupMember$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 748
    .local v0, "aGroupMember":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    iget-wide v12, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mRawContactId:J

    cmp-long v11, v12, v8

    if-nez v11, :cond_3

    .line 749
    iput-object v6, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoUri:Landroid/net/Uri;

    .line 750
    iput-wide v4, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoId:J

    .line 751
    const/4 v3, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "aGroupMember":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 756
    if-eqz v3, :cond_5

    .line 757
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateGroupMemberList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    .end local v1    # "aGroupMember$iterator":Ljava/util/Iterator;
    .end local v3    # "hasUpdate":Z
    .end local v4    # "photoId":J
    .end local v7    # "tempPhotoId":Ljava/lang/String;
    .end local v8    # "rawContactId":J
    .end local v10    # "tempPhotoUri":Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_6
    :goto_1
    return-void

    .line 760
    :catch_0
    move-exception v2

    .line 761
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 762
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 763
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 762
    throw v11
.end method

.method private updateGroupMemberList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1159
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_2

    .line 1160
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1161
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;->GROUP_EDITOR:Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter$DisplayType;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactTileAdapter;->setGroupMember(Ljava/util/ArrayList;)V

    .line 1166
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1158
    :cond_0
    :goto_2
    return-void

    .line 1164
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1176
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateRingtoneTitle(Ljava/lang/String;)V
    .locals 6
    .param p1, "customRingtone"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f090089

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "ringtoneTitle":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "ringtoneTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 617
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0901b2

    .line 616
    invoke-virtual {p0, v5, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 597
    return-void

    .line 603
    .local v1, "ringtoneTitle":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 604
    .local v2, "ringtoneUri":Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 605
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-nez v0, :cond_1

    .line 606
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "ringtoneTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    .local v1, "ringtoneTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "ringtoneTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    .line 464
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 465
    sparse-switch p1, :sswitch_data_0

    .line 488
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    if-eqz v6, :cond_0

    .line 490
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    invoke-virtual {v6, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 468
    :sswitch_0
    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 467
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 470
    .local v3, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [J

    .line 472
    .local v0, "contactIds":[J
    const/4 v1, 0x0

    .line 473
    .local v1, "index":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 474
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    .line 478
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    .line 477
    invoke-direct {p0, v6, v7, v8, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startGroupRawContactLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0

    .line 482
    .end local v0    # "contactIds":[J
    .end local v1    # "index":I
    .end local v3    # "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5    # "uri$iterator":Ljava/util/Iterator;
    :sswitch_1
    const-string/jumbo v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 484
    .local v2, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 465
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xbcf -> :sswitch_1
    .end sparse-switch
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->finish()V

    .line 1287
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 426
    .local v0, "vId":I
    sparse-switch v0, :sswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 428
    :sswitch_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAccountEmpty:Z

    if-eqz v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->showNoContactsDialogFragment()V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->doAddMembers()V

    goto :goto_0

    .line 435
    :sswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->doSaveGroup()V

    goto :goto_0

    .line 438
    :sswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->finish()V

    goto :goto_0

    .line 441
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->doPickRingtone()V

    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x7f0e0000 -> :sswitch_3
        0x7f0e00b4 -> :sswitch_2
        0x7f0e00b6 -> :sswitch_1
        0x7f0e017e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f090265

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 268
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    const v3, 0x7f040087

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setContentView(I)V

    .line 274
    const v3, 0x7f0e0173

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupEdit:Landroid/widget/LinearLayout;

    .line 275
    const v3, 0x7f0e0178

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setItemsCanFocus(Z)V

    .line 278
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsTablet:Z

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 280
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 282
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mList:Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 284
    const v3, 0x7f0e017e

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAddGroupMembersButton:Landroid/widget/Button;

    .line 286
    const v3, 0x7f0e017d

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    .line 309
    :goto_0
    const v3, 0x7f0e017b

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    .line 311
    const/high16 v3, 0x7f0e0000

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    .line 312
    const v3, 0x7f0e017c

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberLabel:Landroid/widget/TextView;

    .line 313
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mRingtoneTitle:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    .line 315
    const v5, 0x7f090089

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 314
    const v5, 0x7f0901b2

    invoke-virtual {p0, v5, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "group_uri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    .line 318
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupMemberListStore:Ljava/util/ArrayList;

    .line 319
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getReadOnlyAccountTypes()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mReadOnlyAccountTypes:Ljava/util/ArrayList;

    .line 322
    if-eqz p1, :cond_1

    .line 323
    const-string/jumbo v3, "accounttype"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    .line 324
    const-string/jumbo v3, "accountname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    .line 325
    const-string/jumbo v3, "accountdataset"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    .line 326
    const-string/jumbo v3, "isreadonly"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 331
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setTitle(I)V

    .line 332
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupName:Ljava/lang/String;

    .line 334
    if-nez p1, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getAvailableAccounts()Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 337
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v4, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 338
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v3, v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 337
    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->onSelectAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v1    # "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->updateGroupMemberList()V

    .line 355
    :goto_2
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    if-eqz v3, :cond_2

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 358
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    return-void

    .line 289
    :cond_3
    const v3, 0x7f0e0179

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, "confirmButtons":Landroid/view/View;
    const v3, 0x7f0e00b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCancelButton:Landroid/widget/Button;

    .line 291
    const v3, 0x7f0e00b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDoneButton:Landroid/widget/Button;

    .line 292
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const/16 v3, 0x10

    .line 296
    const/16 v4, 0x19

    .line 295
    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040088

    invoke-virtual {v3, v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    .line 302
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    .line 303
    const v4, 0x7f0e0175

    .line 302
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    .line 304
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupCustomView:Landroid/widget/RelativeLayout;

    .line 305
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 304
    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 340
    .end local v2    # "confirmButtons":Landroid/view/View;
    .restart local v1    # "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->showSelectAccountDialogFragment()V

    goto :goto_1

    .line 343
    .end local v1    # "availableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setLayoutVisible()V

    goto :goto_1

    .line 348
    :cond_6
    const v3, 0x7f09026a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setTitle(I)V

    .line 352
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startGroupMetadataLoader()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 225
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mCurrentPhotoHandler:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    .line 419
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onDestroy()V

    .line 417
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 263
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 245
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->doSaveGroup()V

    goto :goto_0

    .line 248
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->finish()V

    goto :goto_0

    .line 251
    :sswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->finish()V

    goto :goto_0

    .line 254
    :sswitch_3
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAccountEmpty:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->showNoContactsDialogFragment()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->doAddMembers()V

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0e0254 -> :sswitch_3
        0x7f0e0255 -> :sswitch_1
        0x7f0e0256 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 233
    const v1, 0x7f0e0254

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    .local v0, "addMemberIcon":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 235
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsAddingMembersAllowed:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 238
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 386
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 384
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 410
    const-string/jumbo v0, "accounttype"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v0, "accountname"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "accountdataset"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v0, "isreadonly"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    return-void
.end method

.method public onSelectAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startAccountContactsLoader()V

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1279
    return-void
.end method

.method public setGroupPhoto(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 777
    if-nez p1, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->resetDefaultGroupPhoto()V

    .line 780
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupPhotoBlob:[B

    .line 781
    return-void

    .line 783
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v1

    .line 784
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 785
    const/4 v2, 0x0

    invoke-static {p1, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    .local v0, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mGroupPhotoBlob:[B

    .line 788
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mEditGroupImage:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 790
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mHasSetPhoto:Z

    .line 792
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->bindPhotoHandler()V

    .line 776
    :cond_1
    return-void
.end method

.method public startManagingDialog(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1198
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mManagedDialogs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->mManagedDialogs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1197
    return-void

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
