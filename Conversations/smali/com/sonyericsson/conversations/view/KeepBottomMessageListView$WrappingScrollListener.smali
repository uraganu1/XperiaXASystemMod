.class Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;
.super Ljava/lang/Object;
.source "KeepBottomMessageListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappingScrollListener"
.end annotation


# instance fields
.field private mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;-><init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 127
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->-wrap0(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->-set0(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Z)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 111
    :cond_1
    return-void
.end method

.method public setWrappedListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listenerToWrap"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 106
    return-void
.end method