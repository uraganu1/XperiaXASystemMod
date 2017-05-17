.class public Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;
.super Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;
.source "JoynMessageSenderTask.java"


# instance fields
.field private final mFileUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)V
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Lcom/sonyericsson/conversations/messages/MessageSenderListener;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 29
    iput-object p4, p0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->mFileUriList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static newJoynMessageSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;
    .locals 1
    .param p0, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Lcom/sonyericsson/conversations/messages/MessageSenderListener;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 42
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    .line 44
    .local v2, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    iget-object v3, p0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->mFileUriList:Ljava/util/List;

    .line 43
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 45
    new-instance v3, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 46
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v2    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v3, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method
