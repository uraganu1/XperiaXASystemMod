.class Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$10;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDeleted(Z)V
    .locals 2
    .param p1, "lastXmsMessageDeleted"    # Z

    .prologue
    .line 818
    if-eqz p1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->triggerLastXmsInConversationDeletedCallback()V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get6(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 817
    return-void
.end method
