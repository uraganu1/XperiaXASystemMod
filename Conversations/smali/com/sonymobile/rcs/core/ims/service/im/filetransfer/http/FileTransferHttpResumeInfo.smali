.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FileTransferHttpResumeInfo.java"


# instance fields
.field private end:I

.field private start:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->start:I

    .line 40
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->end:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEnd()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->end:I

    return v0
.end method

.method protected getStart()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->start:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected setEnd(I)V
    .locals 0
    .param p1, "end"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->end:I

    .line 73
    return-void
.end method

.method protected setStart(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->start:I

    .line 59
    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;->url:Ljava/lang/String;

    .line 87
    return-void
.end method
