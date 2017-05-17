.class public interface abstract Lcom/sonyericsson/conversations/messages/MessageSenderListener;
.super Ljava/lang/Object;
.source "MessageSenderListener.java"


# virtual methods
.method public abstract onMessageSent(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/Message;)V
.end method

.method public abstract onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V
.end method

.method public abstract preMessageSend(Lcom/sonyericsson/conversations/conversation/Conversation;)V
.end method
