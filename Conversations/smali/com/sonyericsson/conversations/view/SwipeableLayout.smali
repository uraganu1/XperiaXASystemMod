.class public Lcom/sonyericsson/conversations/view/SwipeableLayout;
.super Landroid/widget/RelativeLayout;
.source "SwipeableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;
    }
.end annotation


# instance fields
.field private mDismissListener:Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;

.field private mSwipeDismissTouchListener:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/view/SwipeableLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->onDismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->setSwipeListener()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->setSwipeListener()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->setSwipeListener()V

    .line 45
    return-void
.end method

.method private onDismiss()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mDismissListener:Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mDismissListener:Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;->onDismiss()V

    .line 81
    :cond_0
    return-void
.end method

.method private setSwipeListener()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    .line 67
    new-instance v1, Lcom/sonyericsson/conversations/view/SwipeableLayout$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/view/SwipeableLayout$1;-><init>(Lcom/sonyericsson/conversations/view/SwipeableLayout;)V

    .line 66
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mSwipeDismissTouchListener:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mSwipeDismissTouchListener:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/view/SwipeableLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mSwipeDismissTouchListener:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->dismiss()V

    .line 61
    return-void
.end method

.method public setDismissListener(Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;)V
    .locals 0
    .param p1, "dismissListener"    # Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeableLayout;->mDismissListener:Lcom/sonyericsson/conversations/view/SwipeableLayout$DismissListener;

    .line 53
    return-void
.end method
