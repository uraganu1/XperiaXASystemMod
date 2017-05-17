.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAcceptRejectListener"
.end annotation


# instance fields
.field private final mFileInviteHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
    .param p2, "fileProgressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->mFileInviteHandler:Ljava/lang/ref/WeakReference;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
    .param p2, "fileProgressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    return-void
.end method

.method private onImFileMessageAcceptedOrRejected(Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 4
    .param p1, "fileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 304
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->mFileInviteHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    .line 307
    .local v0, "inviteHandler":Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->unregisterMessageEventListener()V

    .line 309
    return-void

    .line 313
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "joynMessageId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->unregisterMessageEventListener()V

    .line 303
    :cond_1
    return-void
.end method

.method private unregisterMessageEventListener()V
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 289
    return-void
.end method


# virtual methods
.method public onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 295
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->onImFileMessageAcceptedOrRejected(Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 294
    return-void
.end method

.method public onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 300
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->onImFileMessageAcceptedOrRejected(Lcom/sonymobile/jms/message/ImFileMessage;)V

    .line 299
    return-void
.end method
