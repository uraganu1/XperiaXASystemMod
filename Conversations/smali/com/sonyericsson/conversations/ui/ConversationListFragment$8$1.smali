.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 432
    :cond_0
    return-void
.end method
