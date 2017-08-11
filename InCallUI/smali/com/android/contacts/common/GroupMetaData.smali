.class public final Lcom/android/contacts/common/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "groupId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "defaultGroup"    # Z
    .param p8, "favorites"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    .line 37
    iput-object p6, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 38
    iput-boolean p7, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    .line 39
    iput-boolean p8, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    .line 32
    return-void
.end method
