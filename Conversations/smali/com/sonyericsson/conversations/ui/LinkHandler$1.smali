.class Lcom/sonyericsson/conversations/ui/LinkHandler$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LinkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/LinkHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/LinkHandler;

.field final synthetic val$linkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/LinkHandler;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/LinkHandler;
    .param p2, "val$linkifyTextViewListener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LinkHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->val$linkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LinkHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/LinkHandler;->-get0(Lcom/sonyericsson/conversations/ui/LinkHandler;)Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->val$linkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->val$linkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LinkHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/LinkHandler;->-get0(Lcom/sonyericsson/conversations/ui/LinkHandler;)Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/LinkHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/LinkHandler;->-get0(Lcom/sonyericsson/conversations/ui/LinkHandler;)Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getClickableUri()Landroid/net/Uri;

    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;->onLinkClicked(Landroid/widget/TextView;Landroid/net/Uri;)V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
