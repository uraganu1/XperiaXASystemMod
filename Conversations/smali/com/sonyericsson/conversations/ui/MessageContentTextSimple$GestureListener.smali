.class Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageContentTextSimple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-set0(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;F)F

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-set1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;F)F

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-get1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchDown()V

    .line 170
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-get1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;->-get1(Lcom/sonyericsson/conversations/ui/MessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onClick()V

    .line 162
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
