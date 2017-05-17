.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
.super Ljava/lang/Object;
.source "FileTransferHttpInfoDocument.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private size:I

.field private thumbnail:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private validity:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->size:I

    .line 40
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->type:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->validity:J

    .line 55
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->thumbnail:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .line 66
    return-void
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->size:I

    return v0
.end method

.method public getFileThumbnail()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->thumbnail:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferValidity()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->validity:J

    return-wide v0
.end method

.method public setFileSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->size:I

    .line 156
    return-void
.end method

.method public setFileThumbnail(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;)V
    .locals 0
    .param p1, "thumbnail"    # Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->thumbnail:Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpThumbnail;

    .line 75
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->type:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->url:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->filename:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTransferValidity(J)V
    .locals 1
    .param p1, "validity"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;->validity:J

    .line 102
    return-void
.end method
