.class public interface abstract Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
.super Ljava/lang/Object;
.source "ConversationItemApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V
.end method

.method public abstract getConversationName(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .param p1    # Lcom/sonyericsson/conversations/conversation/ConversationId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation
.end method

.method public abstract getDraftItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXmsItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getXmsProjection()[Ljava/lang/String;
.end method

.method public abstract haveConversations()Z
.end method

.method public abstract isConversationItemsLoaded()Z
.end method

.method public abstract reloadAllConversationItems()V
.end method

.method public abstract removeContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V
.end method
