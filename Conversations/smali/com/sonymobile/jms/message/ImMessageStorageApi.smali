.class public interface abstract Lcom/sonymobile/jms/message/ImMessageStorageApi;
.super Ljava/lang/Object;
.source "ImMessageStorageApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;,
        Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;,
        Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    }
.end annotation


# virtual methods
.method public abstract asFileMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImFileMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImFileMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImSystemMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImSystemMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImTextMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asLocalTimestamp(Landroid/database/Cursor;)J
.end method

.method public abstract asTextMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract asUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract createOutgoingMessage(Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;
.end method

.method public abstract createOutgoingMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;
.end method

.method public abstract getFileIcon(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract getFileMessageStatus(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract getImGroupFileMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract getImGroupTextMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract getNumberOfUnreadImUserMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract getOngoingFileTransferSize(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getUnprocessedUndeliveredImUserMessagesAndMarkThemAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract isFileMessageRead(Landroid/database/Cursor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract isGroupMessage(Landroid/database/Cursor;)Z
.end method

.method public abstract isTextMessageRead(Landroid/database/Cursor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract markUnprocessedUndeliveredImUserMessagesAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract registerFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
.end method

.method public abstract registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V
.end method

.method public abstract retrieveImMessage(Landroid/net/Uri;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract retrieveIncomingReadMessagesWithReportRequested()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract retrieveIncomingUnreadMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract retrieveMessagesContaining(Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract searchMessages(Ljava/util/Collection;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract unregisterFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
.end method

.method public abstract unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V
.end method
