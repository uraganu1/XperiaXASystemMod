.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "clickedView"    # Landroid/view/View;

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    .end local p1    # "clickedView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;->onBubbleClicked(I)V

    .line 1363
    :cond_1
    return-void
.end method
