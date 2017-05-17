.class public interface abstract Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;
.super Ljava/lang/Object;
.source "DeleteConversationsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteConversationsListener"
.end annotation


# virtual methods
.method public abstract onConversationsDeleteCancelled(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V
.end method

.method public abstract onConversationsDeleteFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onConversationsDeleted(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V
.end method

.method public abstract onPreConversationsDelete(I)V
.end method
