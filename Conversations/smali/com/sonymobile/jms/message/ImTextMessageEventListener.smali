.class public interface abstract Lcom/sonymobile/jms/message/ImTextMessageEventListener;
.super Ljava/lang/Object;
.source "ImTextMessageEventListener.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessageEventListener;


# virtual methods
.method public abstract onImTextMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
.end method

.method public abstract onImTextMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
.end method
