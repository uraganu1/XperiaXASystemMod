.class public interface abstract Lcom/sonymobile/jms/conversation/ImConversationApi;
.super Ljava/lang/Object;
.source "ImConversationApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
    }
.end annotation


# virtual methods
.method public abstract acceptImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation
.end method

.method public abstract cancelFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract deleteImConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation
.end method

.method public abstract deleteImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation
.end method

.method public abstract deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract getMaxChatRecipientsToBeAdded(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract getParticipants(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation
.end method

.method public abstract inviteImContacts(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract isFileMessagePendingLocalInvitationResponse(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation
.end method

.method public abstract leaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract onImConversationOpened(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation
.end method

.method public abstract registerImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V
.end method

.method public abstract registerImConversationObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract rejectImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
        }
    .end annotation
.end method

.method public abstract retrieveImConversations()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/file/FileTooBigException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation
.end method

.method public abstract setComposingStatus(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract setMessageDeliveryStatusDisplayed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract startImGroupConversation(Ljava/util/Collection;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/permission/ImPermissionDeniedException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;,
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;,
            Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
        }
    .end annotation
.end method

.method public abstract unregisterImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V
.end method

.method public abstract unregisterImConversationObserver(Landroid/database/ContentObserver;)V
.end method
