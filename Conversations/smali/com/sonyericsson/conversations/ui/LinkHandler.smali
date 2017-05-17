.class public Lcom/sonyericsson/conversations/ui/LinkHandler;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "LinkHandler.java"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/LinkHandler;)Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linkifyTextViewListener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/sonyericsson/conversations/ui/LinkHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/conversations/ui/LinkHandler$1;-><init>(Lcom/sonyericsson/conversations/ui/LinkHandler;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 36
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    move-object v9, p1

    .line 51
    check-cast v9, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    .line 52
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 53
    .local v0, "action":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    if-nez v0, :cond_2

    .line 54
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 55
    .local v7, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 57
    .local v8, "y":I
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getTotalPaddingStart()I

    move-result v9

    sub-int/2addr v7, v9

    .line 58
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 59
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getScrollX()I

    move-result v9

    add-int/2addr v7, v9

    .line 60
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    .line 62
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 63
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 64
    .local v2, "line":I
    int-to-float v9, v7

    invoke-virtual {v1, v2, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 66
    .local v4, "off":I
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 67
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v9, v3

    if-eqz v9, :cond_2

    .line 68
    aget-object v6, v3, v10

    check-cast v6, Landroid/text/style/URLSpan;

    .line 70
    .local v6, "urlspan":Landroid/text/style/URLSpan;
    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 72
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mLinkifyTextView:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setClickableUri(Landroid/net/Uri;)V

    .line 74
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/LinkHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 77
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "urlspan":Landroid/text/style/URLSpan;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    return v9
.end method
