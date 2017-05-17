.class Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
.super Ljava/lang/Object;
.source "FileProgressHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHeaderTextView:Landroid/widget/TextView;

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    return-object v0
.end method

.method static synthetic -wrap0(JJ)I
    .locals 2
    .param p0, "currValue"    # J
    .param p2, "maxValue"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->calculateFileProgressPercentage(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "fileProgressPercentage"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->getFormattedFileProgressText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "headerTextView"    # Landroid/widget/TextView;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mHeaderTextView:Landroid/widget/TextView;

    .line 33
    return-void
.end method

.method private static calculateFileProgressPercentage(JJ)I
    .locals 2
    .param p0, "currValue"    # J
    .param p2, "maxValue"    # J

    .prologue
    .line 76
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p0

    div-long/2addr v0, p2

    long-to-int v0, v0

    return v0
.end method

.method private calculateFileProgressPercentage(Lcom/sonyericsson/conversations/model/JoynMessage;)I
    .locals 6
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 53
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getOngoingFileTransferSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 55
    .local v0, "currentSize":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 56
    const/4 v2, 0x0

    return v2

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 59
    .local v1, "fileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->calculateFileProgressPercentage(JJ)I

    move-result v2

    return v2
.end method

.method private static getFormattedFileProgressText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;I)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "fileProgressPercentage"    # I

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const v1, 0x7f0b00f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "progressText":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "%"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "progressText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b01dc

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "progressText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method getCurrentProgressAndStartProgressHandling()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;)V

    .line 46
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->calculateFileProgressPercentage(Lcom/sonyericsson/conversations/model/JoynMessage;)I

    move-result v2

    .line 48
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->getFormattedFileProgressText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
