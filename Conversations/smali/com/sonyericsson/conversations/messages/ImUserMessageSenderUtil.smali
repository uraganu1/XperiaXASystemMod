.class public Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;
.super Ljava/lang/Object;
.source "ImUserMessageSenderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;)V
    .locals 4
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v1

    .line 62
    .local v1, "imMessageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-eq v1, v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong API usage! Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    const-string/jumbo v3, " can be handled here. "

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "Current message type is "

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 69
    .local v0, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 60
    return-void
.end method

.method public static sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/net/Uri;)V
    .locals 5
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v1

    .line 47
    .local v1, "imFileApi":Lcom/sonymobile/jms/file/ImFileApi;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v3

    .line 50
    .local v3, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/file/ImFileApi;->asImFile(Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v0

    .line 51
    .local v0, "imFile":Lcom/sonymobile/jms/file/ImFile;
    invoke-interface {v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->createOutgoingMessage(Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 53
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 44
    return-void
.end method

.method public static sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "imFileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 128
    .local v0, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {v0, p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 123
    return-void
.end method

.method public static sendImTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .locals 2
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "imTextMessage"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 117
    .local v0, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface {v0, p0, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 112
    return-void
.end method

.method public static sendImTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 2
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->createOutgoingMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v0

    .line 107
    .local v0, "textMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V

    .line 104
    return-void
.end method

.method public static sendImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 7
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fileUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 79
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/net/Uri;)V

    goto :goto_0

    .line 82
    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "fileUri$iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getMediaModelList()Ljava/util/List;

    move-result-object v4

    .line 84
    .local v4, "mediaModels":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/model/MediaModel;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mediaModel$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 85
    .local v2, "mediaModel":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    check-cast v2, Lcom/android/mms/model/TextModel;

    .end local v2    # "mediaModel":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "messageText":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/TextUtil;->containsText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v5    # "messageText":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isStored()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->delete()V

    .line 76
    .end local v3    # "mediaModel$iterator":Ljava/util/Iterator;
    .end local v4    # "mediaModels":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/model/MediaModel;>;"
    :cond_3
    return-void
.end method
