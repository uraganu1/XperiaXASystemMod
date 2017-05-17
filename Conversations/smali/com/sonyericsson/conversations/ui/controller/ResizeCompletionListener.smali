.class public interface abstract Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;
.super Ljava/lang/Object;
.source "ResizeCompletionListener.java"


# virtual methods
.method public abstract onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
.end method

.method public abstract onImageResizeError(Ljava/lang/String;)V
.end method

.method public abstract onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
.end method

.method public abstract onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V
.end method
