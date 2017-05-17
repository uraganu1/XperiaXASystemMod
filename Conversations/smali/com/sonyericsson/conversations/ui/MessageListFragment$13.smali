.class Lcom/sonyericsson/conversations/ui/MessageListFragment$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMarkedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleClicked(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get9(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1121
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 1122
    .local v1, "status":Z
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1123
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get9(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 1118
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "status":Z
    :cond_0
    return-void

    .line 1121
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "status":Z
    goto :goto_0
.end method
