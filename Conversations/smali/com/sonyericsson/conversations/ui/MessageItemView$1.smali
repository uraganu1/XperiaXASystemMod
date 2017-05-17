.class Lcom/sonyericsson/conversations/ui/MessageItemView$1;
.super Ljava/lang/Object;
.source "MessageItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageItemView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->-get0(Lcom/sonyericsson/conversations/ui/MessageItemView;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    return v2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->-get0(Lcom/sonyericsson/conversations/ui/MessageItemView;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchDown()V

    .line 121
    :cond_1
    :goto_0
    return v2

    .line 118
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageItemView;->-get0(Lcom/sonyericsson/conversations/ui/MessageItemView;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchUp()V

    goto :goto_0
.end method
