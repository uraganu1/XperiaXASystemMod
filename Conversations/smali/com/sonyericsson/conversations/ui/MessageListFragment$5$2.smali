.class Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

.field final synthetic val$checkedItemPositions:Landroid/util/SparseBooleanArray;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$5;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$5;
    .param p2, "val$checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p3, "val$deleteStarred"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 1432
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v2, "messageKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1437
    .local v0, "allowDeleteStarred":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v3

    .line 1438
    .local v3, "totalCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1439
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1438
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1442
    :cond_2
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->isStarredItem(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1445
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1448
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessages(Ljava/util/List;)V

    .line 1450
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get9(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1451
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get9(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 1452
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;->this$1:Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-set2(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1431
    :cond_5
    return-void
.end method
