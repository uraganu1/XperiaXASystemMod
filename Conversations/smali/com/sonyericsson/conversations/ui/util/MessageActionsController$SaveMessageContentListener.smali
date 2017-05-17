.class interface abstract Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;
.super Ljava/lang/Object;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SaveMessageContentListener"
.end annotation


# virtual methods
.method public abstract onMessageContentSaveException(Lcom/sonyericsson/conversations/model/Message;Ljava/lang/Exception;)V
.end method

.method public abstract onMessageContentSaved(Lcom/sonyericsson/conversations/model/Message;Ljava/io/File;)V
.end method
