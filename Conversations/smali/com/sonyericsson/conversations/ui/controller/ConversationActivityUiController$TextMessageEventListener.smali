.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImTextMessageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextMessageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4280
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method public onImTextMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 4304
    return-void
.end method

.method public onImTextMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 3
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 4285
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne p3, v1, :cond_1

    .line 4286
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4288
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isImTextCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4289
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->updateCapabilities()V

    .line 4291
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 4292
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap38(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 4294
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    .line 4295
    .local v0, "visibleOne2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4296
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap8(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 4284
    .end local v0    # "visibleOne2OneConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    :cond_1
    return-void
.end method
