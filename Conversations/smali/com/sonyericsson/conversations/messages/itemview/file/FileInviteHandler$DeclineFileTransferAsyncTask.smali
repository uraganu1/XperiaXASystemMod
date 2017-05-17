.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;
.super Landroid/os/AsyncTask;
.source "FileInviteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeclineFileTransferAsyncTask"
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
.field private final mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field private final mMessageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "msgId"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 245
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mMessageId:Ljava/lang/String;

    .line 243
    return-void
.end method

.method private declineFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->rejectImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 276
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mMessageId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->declineFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v1, 0x0

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v1, "Unable to reject transfer of file message with msgId = \'"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mMessageId:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 259
    const-string/jumbo v2, "\'"

    .line 258
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 260
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V
    .locals 3
    .param p1, "e"    # Lcom/sonymobile/jms/conversation/RcsSessionException;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap2(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/content/Context;

    move-result-object v0

    .line 268
    const v1, 0x7f0b01f7

    .line 269
    const/4 v2, 0x0

    .line 267
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    const-string/jumbo v0, "Unable to decline file transfer of file message with msgId = \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->mMessageId:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "\'"

    .line 270
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$DeclineFileTransferAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 248
    return-void
.end method
