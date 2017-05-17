.class public interface abstract Lcom/sonymobile/jms/message/ImFileMessageEventListener;
.super Ljava/lang/Object;
.source "ImFileMessageEventListener.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessageEventListener;


# virtual methods
.method public abstract onImFileMessageDeliveryProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
.end method

.method public abstract onImFileMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
.end method

.method public abstract onImFileMessageReceiveProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
.end method

.method public abstract onImFileMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
.end method
