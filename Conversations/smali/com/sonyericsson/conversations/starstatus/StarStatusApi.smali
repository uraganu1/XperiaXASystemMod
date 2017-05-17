.class public interface abstract Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
.super Ljava/lang/Object;
.source "StarStatusApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;,
        Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;
    }
.end annotation


# virtual methods
.method public abstract deleteConversationStarStatuses(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteMessageStarStatuses(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConversationStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
.end method

.method public abstract getStarStatus(Ljava/lang/String;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
.end method

.method public abstract getStarredMessageKeys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V
.end method

.method public abstract setStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)J
.end method

.method public abstract unregisterListener(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$StarStatusListener;)V
.end method
