.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;
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
    .line 297
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 300
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v2

    .line 301
    .local v2, "headerCount":I
    sub-int v0, p3, v2

    .line 302
    .local v0, "adapterIndex":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getConversationIdAtPosition(I)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 303
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onListItemClick(Lcom/sonyericsson/conversations/conversation/ConversationId;I)V

    .line 299
    return-void
.end method
