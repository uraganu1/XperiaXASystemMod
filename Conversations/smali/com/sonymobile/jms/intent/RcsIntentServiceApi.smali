.class public interface abstract Lcom/sonymobile/jms/intent/RcsIntentServiceApi;
.super Ljava/lang/Object;
.source "RcsIntentServiceApi.java"


# virtual methods
.method public abstract onImsConnectionStatusChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onImsProvisioningChange()V
.end method

.method public abstract onRcsChatSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsChatSessionImError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsChatSessionReceivedTextMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsChatSessionReplaced(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsChatSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsFileTransferError(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsFileTransferInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[BLjava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsFileTransferSessionAborted(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsFileTransferSessionTerminatedByRemote(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsGroupChatInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onRcsOne2OneChatSessionInvitationReceived(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract onUndeliveredMessageTimeout(Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation
.end method

.method public abstract pushRcsIntentForProcessing(Landroid/content/Intent;)V
.end method
