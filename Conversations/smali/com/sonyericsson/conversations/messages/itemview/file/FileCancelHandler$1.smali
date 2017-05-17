.class Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$1;
.super Ljava/lang/Object;
.source "FileCancelHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->startFileCancelHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method
