.class public interface abstract Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;
.super Ljava/lang/Object;
.source "LeaveConversationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeaveConversationTaskListener"
.end annotation


# virtual methods
.method public abstract onFailedConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/Exception;)V
.end method

.method public abstract onSuccessfulConversationLeave(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
.end method
