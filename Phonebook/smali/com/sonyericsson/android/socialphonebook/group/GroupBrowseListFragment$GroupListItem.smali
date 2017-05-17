.class final Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupListItem"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private final mGroupId:J

.field private final mGroupPhoto:Landroid/graphics/Bitmap;

.field private final mIsFirstGroupInAccount:Z

.field private final mMemberCount:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "groupId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "isFirstGroupInAccount"    # Z
    .param p8, "memberCount"    # I
    .param p9, "groupPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mAccountName:Ljava/lang/String;

    .line 488
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mAccountType:Ljava/lang/String;

    .line 489
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mDataSet:Ljava/lang/String;

    .line 490
    iput-wide p4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mGroupId:J

    .line 491
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mTitle:Ljava/lang/String;

    .line 492
    iput-boolean p7, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mIsFirstGroupInAccount:Z

    .line 493
    iput p8, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mMemberCount:I

    .line 494
    iput-object p9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mGroupPhoto:Landroid/graphics/Bitmap;

    .line 486
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mGroupId:J

    return-wide v0
.end method

.method public getGroupPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mGroupPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mMemberCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstGroupInAccount()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->mIsFirstGroupInAccount:Z

    return v0
.end method
