.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

.field final synthetic val$checkedItemPositions:Landroid/util/SparseBooleanArray;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$headerCount:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;ILandroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;
    .param p2, "val$headerCount"    # I
    .param p3, "val$checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p4, "val$deleteStarred"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1605
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCount()I

    move-result v1

    .line 1606
    .local v1, "totalCount":I
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    add-int/2addr v1, v0

    .line 1607
    new-array v3, v1, [Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1608
    .local v3, "conversationIds":[Lcom/sonyericsson/conversations/conversation/ConversationId;
    new-array v5, v1, [Z

    .line 1609
    .local v5, "itemsStarred":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    if-ge v7, v0, :cond_0

    .line 1610
    aput-boolean v2, v5, v7

    .line 1609
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1612
    :cond_0
    iget v7, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    :goto_1
    if-ge v7, v1, :cond_2

    .line 1613
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$headerCount:I

    sub-int v6, v7, v0

    .line 1614
    .local v6, "adapterIndex":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    aput-object v0, v3, v7

    .line 1616
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->isConversationStarred(I)Z

    move-result v0

    .line 1616
    :goto_2
    aput-boolean v0, v5, v7

    .line 1612
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1616
    goto :goto_2

    .line 1620
    .end local v6    # "adapterIndex":I
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v0

    .line 1622
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$checkedItemPositions:Landroid/util/SparseBooleanArray;

    .line 1623
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    .line 1621
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ConversationListModel;->deleteThreads(ILandroid/util/SparseBooleanArray;[Lcom/sonyericsson/conversations/conversation/ConversationId;Z[Z)V

    .line 1625
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get6(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1626
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get6(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1627
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;->this$1:Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0, v8}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-set1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1604
    :cond_4
    return-void
.end method
