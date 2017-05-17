.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLookupChanged()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    .line 462
    if-eqz v0, :cond_2

    .line 464
    :cond_1
    return-void

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    :cond_3
    return-void

    .line 471
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->notifyDataSetChanged()V

    .line 456
    return-void
.end method
