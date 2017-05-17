.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchCursorAdapter:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->getMessageUriAtPosition(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-set0(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onListItemClick(Lcom/sonyericsson/conversations/conversation/ConversationId;I)V

    .line 310
    return-void
.end method
