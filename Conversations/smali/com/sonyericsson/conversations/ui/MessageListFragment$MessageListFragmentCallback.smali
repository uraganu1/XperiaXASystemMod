.class public interface abstract Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListFragmentCallback"
.end annotation


# virtual methods
.method public abstract onAllMessagesDeleted()V
.end method

.method public abstract onContextMenuCreated()V
.end method

.method public abstract onFinishDeleteMessagesActionMode()V
.end method

.method public abstract onLastXmsInConversationDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public abstract onMenuOptionSelected()V
.end method

.method public abstract onMsgListLoadFinished()V
.end method

.method public abstract onScrollStarted()V
.end method

.method public abstract onStartDeleteSeveralMessages()V
.end method
