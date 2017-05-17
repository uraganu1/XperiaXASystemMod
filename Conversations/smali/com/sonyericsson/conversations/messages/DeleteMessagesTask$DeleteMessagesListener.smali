.class public interface abstract Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;
.super Ljava/lang/Object;
.source "DeleteMessagesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteMessagesListener"
.end annotation


# virtual methods
.method public abstract onMessagesDeleteCancelled()V
.end method

.method public abstract onMessagesDeleteFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onMessagesDeleted(IZ)V
.end method

.method public abstract preMessagesDelete()V
.end method
