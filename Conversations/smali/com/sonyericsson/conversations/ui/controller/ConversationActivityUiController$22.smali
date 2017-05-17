.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertToMessageType(I)V
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
    .line 2849
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2851
    :cond_0
    return-void
.end method
