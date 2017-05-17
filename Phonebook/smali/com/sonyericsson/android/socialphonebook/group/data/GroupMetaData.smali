.class public final Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mIsReadonly:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "groupId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "defaultGroup"    # Z
    .param p8, "favorites"    # Z
    .param p9, "readonly"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mDataSet:Ljava/lang/String;

    .line 48
    iput-wide p4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mGroupId:J

    .line 49
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 50
    iput-boolean p7, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mDefaultGroup:Z

    .line 51
    iput-boolean p8, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mFavorites:Z

    .line 52
    iput-boolean p9, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mIsReadonly:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method

.method public isFavorites()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mFavorites:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;->mIsReadonly:Z

    return v0
.end method
