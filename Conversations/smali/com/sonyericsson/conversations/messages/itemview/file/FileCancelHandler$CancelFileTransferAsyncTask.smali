.class Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;
.super Landroid/os/AsyncTask;
.source "FileCancelHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelFileTransferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonymobile/jms/conversation/RcsSessionException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)V

    return-void
.end method

.method private cancelFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->cancelFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->cancelFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V
    .locals 3
    .param p1, "e"    # Lcom/sonymobile/jms/conversation/RcsSessionException;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    const v1, 0x7f0b01f7

    .line 75
    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    const-string/jumbo v0, "Unable to cancel transfer of file message with msgId = \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "\'"

    .line 77
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler$CancelFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 56
    return-void
.end method
