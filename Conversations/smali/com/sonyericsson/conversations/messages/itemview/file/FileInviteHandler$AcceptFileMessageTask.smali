.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;
.super Landroid/os/AsyncTask;
.source "FileInviteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptFileMessageTask"
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
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 201
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->mMessageId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private acceptFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
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
    .line 232
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->acceptImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->mImConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->mMessageId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->acceptFileTransfer(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 210
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/jms/conversation/RcsSessionException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V
    .locals 3
    .param p1, "e"    # Lcom/sonymobile/jms/conversation/RcsSessionException;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap2(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/content/Context;

    move-result-object v0

    .line 223
    const v1, 0x7f0b01f8

    .line 224
    const/4 v2, 0x0

    .line 222
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    const-string/jumbo v0, "Unable to accept file transfer of file message with msgId = \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->mMessageId:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "\'"

    .line 225
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Lcom/sonymobile/jms/conversation/RcsSessionException;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->onPostExecute(Lcom/sonymobile/jms/conversation/RcsSessionException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$AcceptFileMessageTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 205
    return-void
.end method
