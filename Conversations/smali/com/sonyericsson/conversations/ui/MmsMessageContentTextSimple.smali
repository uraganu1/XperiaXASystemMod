.class public Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
.super Landroid/widget/LinearLayout;
.source "MmsMessageContentTextSimple.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable;
.implements Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;,
        Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;
    }
.end annotation


# instance fields
.field private mLastX:F

.field private mLastY:F

.field private mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mLastX:F

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;F)F
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mLastY:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getLastX()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mLastX:F

    return v0
.end method

.method public getLastY()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mLastY:F

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 53
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;-><init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;Landroid/view/GestureDetector;)V

    .line 54
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    const v2, 0x7f0d00cd

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mSubjectView:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    new-instance v0, Landroid/view/GestureDetector;

    .end local v0    # "gestureDetector":Landroid/view/GestureDetector;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mSubjectView:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;Landroid/view/View;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 60
    .restart local v0    # "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;

    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;-><init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;Landroid/view/GestureDetector;)V

    .line 61
    .restart local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    const v2, 0x7f0d00ce

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    return-void
.end method

.method public onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 66
    return-void
.end method

.method public setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "occml"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 71
    return-void
.end method

.method public setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->mOnShortClickListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    .line 81
    return-void
.end method

.method public setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 76
    return-void
.end method
