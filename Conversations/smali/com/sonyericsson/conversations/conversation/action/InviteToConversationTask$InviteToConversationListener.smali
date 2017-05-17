.class public interface abstract Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;
.super Ljava/lang/Object;
.source "InviteToConversationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InviteToConversationListener"
.end annotation


# virtual methods
.method public abstract onInviteException(Ljava/lang/Exception;)V
.end method

.method public abstract onInviteSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V
.end method

.method public abstract onPreInvite()V
.end method
