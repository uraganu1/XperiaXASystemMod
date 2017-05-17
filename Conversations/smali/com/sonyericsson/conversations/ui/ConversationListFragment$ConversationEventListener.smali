.class public interface abstract Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationEventListener"
.end annotation


# virtual methods
.method public abstract onCloseSearchModeInConversationList()V
.end method

.method public abstract onConvListLoadFinished()V
.end method

.method public abstract onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public abstract onFinishDeleteConversationsActionMode(Z)V
.end method

.method public abstract onOpenSearchMode(Ljava/lang/String;)V
.end method

.method public abstract onPickContactsForGroupChat()V
.end method

.method public abstract onSearchViewExpand()V
.end method

.method public abstract onStartDeleteConversations()V
.end method

.method public abstract onWriteNewMessage()V
.end method
