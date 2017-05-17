.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showResizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V
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
    .line 3627
    .local p4, "val$fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$fileUriList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 0

    .prologue
    .line 3641
    return-void
.end method

.method public onResizeDialogChoice(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;)V
    .locals 5
    .param p1, "choice"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->runSendAnimation()V

    .line 3631
    sget-object v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;->RESIZED:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$FileResizeSendOption;

    if-ne p1, v0, :cond_0

    .line 3632
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 3633
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$fileUriList:Ljava/util/List;

    .line 3632
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap24(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3629
    :goto_0
    return-void

    .line 3635
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$joynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->val$fileUriList:Ljava/util/List;

    .line 3636
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-result-object v4

    .line 3635
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap25(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    .line 3637
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap10(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    goto :goto_0
.end method
