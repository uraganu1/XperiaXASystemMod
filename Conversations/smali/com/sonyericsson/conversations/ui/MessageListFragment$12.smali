.class Lcom/sonyericsson/conversations/ui/MessageListFragment$12;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$listViewIndex:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILandroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "val$listViewIndex"    # I
    .param p3, "val$listView"    # Landroid/widget/ListView;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->val$listViewIndex:I

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageListItemPopulated(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1034
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->val$listViewIndex:I

    if-ne p1, v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V

    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;->val$listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 1033
    :cond_0
    return-void
.end method
