.class public interface abstract Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;
.super Ljava/lang/Object;
.source "ImFileMessageAcceptRejectListener.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessageEventListener;


# virtual methods
.method public abstract onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
.end method

.method public abstract onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
.end method
