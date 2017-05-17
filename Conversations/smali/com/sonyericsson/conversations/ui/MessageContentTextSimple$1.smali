.class Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;
.super Ljava/lang/Object;
.source "MessageContentTextSimple.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-get0(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-get1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchUp()V

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
