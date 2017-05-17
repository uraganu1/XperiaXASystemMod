.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showWarnSizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field final synthetic val$fileUriList:Ljava/util/List;

.field final synthetic val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "val$joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 3666
    .local p4, "val$fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$fileUriList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3668
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 3671
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;->val$fileUriList:Ljava/util/List;

    .line 3669
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->newJoynMessageSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3667
    :cond_0
    return-void
.end method
