.class public Lcom/sonymobile/settings/backup/BackupInfo;
.super Ljava/lang/Object;
.source "BackupInfo.java"


# instance fields
.field private mContentTypeIds:Ljava/lang/String;

.field private mIsAutoBackupOn:Z

.field private mIsNewBackup:Z

.field private mLastBackupTime:J

.field private mLastUnsuccessfulBackupLocation:I

.field private mLastUnsuccessfulBackupReason:I

.field private mNextAutoBackupTime:J

.field private mWaitingForBackupCondition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentTypeIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mContentTypeIds:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBackupTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastBackupTime:J

    return-wide v0
.end method

.method public getLastUnsuccessfulBackupLocation()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    return v0
.end method

.method public getLastUnsuccessfulBackupReason()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    return v0
.end method

.method public getNextAutoBackupTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mNextAutoBackupTime:J

    return-wide v0
.end method

.method public getWaitingForBackupCondition()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mWaitingForBackupCondition:I

    return v0
.end method

.method public hasRelevantErrors()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    .line 219
    if-eqz v0, :cond_2

    .line 223
    iget-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsNewBackup:Z

    .line 219
    :goto_0
    return v0

    .line 221
    :cond_1
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 222
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoBackupOn()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    return v0
.end method

.method public setAutoBackupOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    .line 58
    return-void
.end method

.method public setContentTypeIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTypeIds"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mContentTypeIds:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setIsNewBackup(Z)V
    .locals 0
    .param p1, "newBackup"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsNewBackup:Z

    .line 209
    return-void
.end method

.method public setLastBackupTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastBackupTime:J

    .line 94
    return-void
.end method

.method public setLastUnsuccessfulBackupLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    .line 115
    return-void
.end method

.method public setLastUnsuccessfulBackupReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    .line 138
    return-void
.end method

.method public setNextAutoBackupTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mNextAutoBackupTime:J

    .line 76
    return-void
.end method

.method public setWaitingForBackupCondition(I)V
    .locals 0
    .param p1, "waitingCondition"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mWaitingForBackupCondition:I

    .line 191
    return-void
.end method
