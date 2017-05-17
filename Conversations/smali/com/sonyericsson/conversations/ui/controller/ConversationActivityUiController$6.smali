.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "image"    # Landroid/net/Uri;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    return-void
.end method

.method public onImageResizeError(Ljava/lang/String;)V
    .locals 1
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap16(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public onNonResizableMediaFound(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p3, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method

.method public onVideoResizeCompleted(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    return-void
.end method

.method public onVideoResizeError(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "video"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap17(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V

    .line 651
    return-void
.end method
