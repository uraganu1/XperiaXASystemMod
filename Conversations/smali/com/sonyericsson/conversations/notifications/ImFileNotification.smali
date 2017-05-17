.class public Lcom/sonyericsson/conversations/notifications/ImFileNotification;
.super Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;
.source "ImFileNotification.java"

# interfaces
.implements Lcom/sonyericsson/conversations/notifications/ImNotification;
.implements Lcom/sonymobile/jms/message/ImMessage;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCurrentFileSize:J

.field private mFileSize:J

.field private mFileUri:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mGetFileUriException:Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

.field private mState:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;


# direct methods
.method public constructor <init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V
    .locals 5
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "whenTimestamp"    # J
    .param p5, "fileMessageState"    # Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/notifications/BaseImUserMessageNotification;-><init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mGetFileUriException:Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    .line 59
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mCurrentFileSize:J

    .line 72
    iput-object p5, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mState:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 75
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFilename:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFileSize:J

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFileUri:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mGetFileUriException:Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    goto :goto_0
.end method


# virtual methods
.method getFileSize()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFileSize:J

    return-wide v0
.end method

.method getFileUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mGetFileUriException:Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mGetFileUriException:Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method getPercentageProgress()I
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mCurrentFileSize:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mFileSize:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method getState()Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mState:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    return-object v0
.end method

.method updateCurrentFileSize(J)V
    .locals 1
    .param p1, "currentFileSize"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->mCurrentFileSize:J

    .line 89
    return-void
.end method
