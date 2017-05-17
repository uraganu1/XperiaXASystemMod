.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field final synthetic val$fileUris:Ljava/util/List;

.field final synthetic val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;
    .param p2, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "val$joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 658
    .local p4, "val$fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$fileUris:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->val$fileUris:Ljava/util/List;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap25(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    .line 659
    return-void
.end method
