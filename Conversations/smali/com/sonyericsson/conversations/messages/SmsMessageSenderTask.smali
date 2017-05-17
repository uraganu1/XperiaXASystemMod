.class public Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;
.super Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;
.source "SmsMessageSenderTask.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSmsMessage:Lcom/sonyericsson/conversations/model/SmsMessage;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .param p3, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "oldDraftThreadConversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p5}, Lcom/sonyericsson/conversations/messages/AbstractMessageSenderTask;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 39
    iput-object p4, p0, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->mSmsMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 37
    return-void
.end method

.method public static newSmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;)Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;
    .locals 1
    .param p0, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p1, "smsMessage"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .param p2, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->newSmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;

    move-result-object v0

    return-object v0
.end method

.method public static newSmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;
    .locals 6
    .param p0, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p1, "smsMessage"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .param p2, "sendMessageListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "oldDraftThreadConversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 62
    new-instance v0, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

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
    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->mSmsMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    .line 70
    .local v1, "sentMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    new-instance v2, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 71
    .end local v1    # "sentMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lcom/google/android/mms/MmsException;
    new-instance v2, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method
