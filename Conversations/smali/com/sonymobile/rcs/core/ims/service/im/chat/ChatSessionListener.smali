.class public interface abstract Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSessionListener;
.super Ljava/lang/Object;
.source "ChatSessionListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;


# virtual methods
.method public abstract handleAddParticipantFailed(Ljava/lang/String;)V
.end method

.method public abstract handleAddParticipantSuccessful()V
.end method

.method public abstract handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleImError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatError;)V
.end method

.method public abstract handleIsComposingEvent(Ljava/lang/String;Z)V
.end method

.method public abstract handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
.end method

.method public abstract handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
.end method
