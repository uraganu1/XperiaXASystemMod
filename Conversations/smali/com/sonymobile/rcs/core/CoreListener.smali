.class public interface abstract Lcom/sonymobile/rcs/core/CoreListener;
.super Ljava/lang/Object;
.source "CoreListener.java"


# virtual methods
.method public abstract handle1to1FileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
.end method

.method public abstract handleAdhocGroupChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingAdhocGroupChatSession;)V
.end method

.method public abstract handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
.end method

.method public abstract handleContentSharingStreamingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V
.end method

.method public abstract handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/geoloc/GeolocTransferSession;)V
.end method

.method public abstract handleContentSharingTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;)V
.end method

.method public abstract handleCoreLayerStarted()V
.end method

.method public abstract handleCoreLayerStopped()V
.end method

.method public abstract handleFileTransferInvitation(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;Z)V
.end method

.method public abstract handleGroupFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleGroupMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleHttpFileTransferResuming(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingSession;)V
.end method

.method public abstract handleIPCallInvitation(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V
.end method

.method public abstract handleOne2OneFileDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleOne2OneMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleOneOneChatSessionExtended(Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;Lcom/sonymobile/rcs/core/ims/service/im/chat/OneOneChatSession;)V
.end method

.method public abstract handleOneOneChatSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/TerminatingOne2OneChatSession;)V
.end method

.method public abstract handlePresenceInfoNotification(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/presence/pidf/PidfDocument;)V
.end method

.method public abstract handlePresenceSharingInvitation(Ljava/lang/String;)V
.end method

.method public abstract handlePresenceSharingNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleRegistrationFailed(Lcom/sonymobile/rcs/core/ims/ImsError;)V
.end method

.method public abstract handleRegistrationSuccessful()V
.end method

.method public abstract handleRegistrationTerminated()V
.end method

.method public abstract handleSimHasChanged()V
.end method

.method public abstract handleSipInstantMessageReceived(Landroid/content/Intent;)V
.end method

.method public abstract handleSipSessionInvitation(Landroid/content/Intent;Lcom/sonymobile/rcs/core/ims/service/sip/GenericSipSession;)V
.end method

.method public abstract handleStoreAndForwardMsgSessionInvitation(Lcom/sonymobile/rcs/core/ims/service/im/chat/standfw/TerminatingStoreAndForwardMsgSession;)V
.end method

.method public abstract handleSystemRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleUserConfirmationAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleUserConfirmationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract handleUserNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
