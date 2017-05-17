.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndeliveredMessageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 4212
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    return-void
.end method


# virtual methods
.method public onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 2
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4215
    return-void
.end method
