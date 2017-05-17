.class public final Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
.super Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# static fields
.field public static final STATUS_LOADED:I = 0x2

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NOT_LOADED:I


# instance fields
.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 39
    return-void
.end method


# virtual methods
.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mStatus:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryId(J)V
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDirectoryId:J

    .line 50
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "directoryType"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mPhotoSupported:Z

    .line 107
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .param p1, "priorityDirectory"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 96
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->mStatus:I

    .line 81
    return-void
.end method
