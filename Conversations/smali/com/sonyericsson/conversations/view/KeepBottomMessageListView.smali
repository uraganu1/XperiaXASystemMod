.class public Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;
.super Lcom/sonyericsson/conversations/ui/MessageListView;
.source "KeepBottomMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;
    }
.end annotation


# instance fields
.field private mKeepLastItemAtBottom:Z

.field private mSearchMode:Z

.field private mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->isLastChildAtBottom()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z

    .line 34
    new-instance v0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;-><init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 31
    return-void
.end method

.method private ensureLastViewAtBottom()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildCount()I

    move-result v1

    .line 80
    .local v1, "numberOfChildren":I
    if-nez v1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getBottom()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v2, v3, v4

    .line 84
    .local v2, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method private isLastChildAtBottom()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "lastChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->getBottom()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 96
    const/4 v1, 0x1

    return v1

    .line 99
    .end local v0    # "lastChild":Landroid/view/View;
    :cond_0
    return v3
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Lcom/sonyericsson/conversations/ui/MessageListView;->onLayout(ZIIII)V

    .line 61
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->isLastChildAtBottom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->ensureLastViewAtBottom()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    if-ne p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    invoke-super {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 39
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mWrappingScrollListener:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->setWrappedListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "searchMode"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mSearchMode:Z

    .line 140
    return-void
.end method
