.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->registerJoynListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isTerminatedByUser"    # Ljava/lang/Boolean;

    .prologue
    .line 837
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap26(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 838
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->val$conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap39(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 836
    :cond_0
    return-void

    .line 837
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "isTerminatedByUser"    # Ljava/lang/Object;

    .prologue
    .line 836
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "isTerminatedByUser":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
