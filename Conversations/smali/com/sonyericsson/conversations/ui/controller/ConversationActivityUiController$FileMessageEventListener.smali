.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImFileMessageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileMessageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4247
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method public onImFileMessageDeliveryProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 4269
    return-void
.end method

.method public onImFileMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 4275
    return-void
.end method

.method public onImFileMessageReceiveProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 4251
    return-void
.end method

.method public onImFileMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 4258
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne p3, v0, :cond_0

    .line 4259
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 4262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap38(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 4257
    :cond_0
    return-void
.end method
