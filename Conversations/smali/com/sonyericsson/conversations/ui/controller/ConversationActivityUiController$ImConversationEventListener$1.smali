.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;->onImConversationStateChange(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;)V
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
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    .prologue
    .line 4097
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isTerminatedByUser"    # Ljava/lang/Boolean;

    .prologue
    .line 4100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap26(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 4099
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "isTerminatedByUser"    # Ljava/lang/Object;

    .prologue
    .line 4099
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "isTerminatedByUser":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener$1;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
