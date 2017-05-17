.class public interface abstract Lcom/sonyericsson/conversations/draft/DraftsApi;
.super Ljava/lang/Object;
.source "DraftsApi.java"


# virtual methods
.method public abstract deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public abstract deleteDrafts(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public abstract getAllDrafts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/draft/Draft;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;
.end method

.method public abstract registerListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V
.end method

.method public abstract saveDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/draft/DuplicateDraftException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/sonyericsson/conversations/draft/DraftsListener;)V
.end method
