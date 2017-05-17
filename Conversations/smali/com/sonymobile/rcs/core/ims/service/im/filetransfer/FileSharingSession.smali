.class public abstract Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;
.super Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
.source "FileSharingSession.java"


# instance fields
.field private content:Lcom/sonymobile/rcs/core/content/MmContent;

.field private contributionId:Ljava/lang/String;

.field private currentDate:Ljava/util/Date;

.field private fileTransferPaused:Z

.field private fileTransfered:Z

.field private fileUploaded:Z

.field private isFileAutoAccept:Z

.field private isGroupFileTransfer:Z

.field private mMessageId:Ljava/lang/String;

.field protected participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

.field private sentDate:Ljava/util/Date;

.field private thumbnail:[B


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "thumbnail"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;)V

    .line 27
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->contributionId:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransfered:Z

    .line 47
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileUploaded:Z

    .line 52
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    .line 57
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->thumbnail:[B

    .line 62
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransferPaused:Z

    .line 67
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileAutoAccept:Z

    .line 72
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isGroupFileTransfer:Z

    .line 95
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    .line 96
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->thumbnail:[B

    .line 97
    return-void
.end method

.method public static getMaxFileSharingSize()I
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxFileTransferSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method


# virtual methods
.method public fileTransferPaused()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransferPaused:Z

    .line 208
    return-void
.end method

.method public fileTransferResumed()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransferPaused:Z

    .line 215
    return-void
.end method

.method public fileTransfered()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransfered:Z

    .line 176
    return-void
.end method

.method public fileUploaded()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileUploaded:Z

    .line 183
    return-void
.end method

.method public getContent()Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->content:Lcom/sonymobile/rcs/core/content/MmContent;

    return-object v0
.end method

.method public getContributionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->contributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->currentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->participants:Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->sentDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getSessionState()I
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->thumbnail:[B

    return-object v0
.end method

.method public isFileAutoAccept()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileAutoAccept:Z

    return v0
.end method

.method public isFileTransferPaused()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransferPaused:Z

    return v0
.end method

.method public isFileTransfered()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->fileTransfered:Z

    return v0
.end method

.method public isGroupFileTransfer()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isGroupFileTransfer:Z

    return v0
.end method

.method public setContributionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->contributionId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->currentDate:Ljava/util/Date;

    .line 320
    return-void
.end method

.method public setFileAutoAccept(Z)V
    .locals 0
    .param p1, "autAccept"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isFileAutoAccept:Z

    .line 275
    return-void
.end method

.method public setGroupFileTransfer(Z)V
    .locals 0
    .param p1, "isGroupFileTransfer"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->isGroupFileTransfer:Z

    .line 302
    return-void
.end method

.method public setMessageID(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->mMessageId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->sentDate:Ljava/util/Date;

    .line 338
    return-void
.end method

.method public setThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;->thumbnail:[B

    .line 251
    return-void
.end method
