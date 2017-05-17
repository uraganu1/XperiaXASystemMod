.class public final Lcom/sonymobile/jms/message/ImFileMessage;
.super Lcom/sonymobile/jms/message/AbstractImUserMessage;
.source "ImFileMessage.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessage;
.implements Lcom/sonymobile/jms/message/ImMessage;


# instance fields
.field private final mFile:Lcom/sonymobile/jms/file/ImFile;


# direct methods
.method protected constructor <init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)V
    .locals 1
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "direction"    # Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .param p6, "contact"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p7, "msgId"    # Ljava/lang/String;
    .param p8, "file"    # Lcom/sonymobile/jms/file/ImFile;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/sonymobile/jms/message/AbstractImUserMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 21
    iput-object p8, p0, Lcom/sonymobile/jms/message/ImFileMessage;->mFile:Lcom/sonymobile/jms/file/ImFile;

    .line 22
    return-void
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessage;->mFile:Lcom/sonymobile/jms/file/ImFile;

    invoke-virtual {v0}, Lcom/sonymobile/jms/file/ImFile;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessage;->mFile:Lcom/sonymobile/jms/file/ImFile;

    invoke-virtual {v0}, Lcom/sonymobile/jms/file/ImFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessage;->mFile:Lcom/sonymobile/jms/file/ImFile;

    invoke-virtual {v0}, Lcom/sonymobile/jms/file/ImFile;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileMessage;->mFile:Lcom/sonymobile/jms/file/ImFile;

    invoke-virtual {v0}, Lcom/sonymobile/jms/file/ImFile;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
