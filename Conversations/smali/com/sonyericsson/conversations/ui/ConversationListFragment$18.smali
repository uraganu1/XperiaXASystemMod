.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p2, "val$searchString"    # Ljava/lang/String;

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->val$searchString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get10(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1705
    return-void

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get10(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1708
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get10(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->val$searchString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->val$searchString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1711
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$18;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1700
    :cond_1
    return-void
.end method
