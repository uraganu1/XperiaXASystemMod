.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field final synthetic val$image:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;
    .param p2, "val$image"    # Landroid/net/Uri;
    .param p3, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->val$image:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 669
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->val$image:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get14(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap25(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    .line 668
    return-void
.end method
