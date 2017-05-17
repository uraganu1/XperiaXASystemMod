.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;
.super Ljava/lang/Object;
.source "FileTransferHttpThumbnail.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private size:I

.field private url:Ljava/lang/String;

.field private validity:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->size:I

    .line 35
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->contentType:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->validity:J

    .line 51
    return-void
.end method


# virtual methods
.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnailSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->size:I

    .line 123
    return-void
.end method

.method public setThumbnailType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->contentType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->url:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setThumbnailValidity(J)V
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;->validity:J

    .line 69
    return-void
.end method
