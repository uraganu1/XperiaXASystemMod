.class Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$1;->onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$1;

.field final synthetic val$updatedConversation:Lcom/sonyericsson/conversations/conversation/Conversation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$1;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/EditorFragment$1;
    .param p2, "val$updatedConversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->val$updatedConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->val$updatedConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 296
    return-void
.end method
