.class Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListScrollListener"
.end annotation


# instance fields
.field private mScrollStarted:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    .line 977
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 982
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V

    .line 981
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 990
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    if-nez v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 991
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    .line 992
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get1(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onScrollStarted()V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    if-nez p2, :cond_0

    .line 994
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    goto :goto_0
.end method
