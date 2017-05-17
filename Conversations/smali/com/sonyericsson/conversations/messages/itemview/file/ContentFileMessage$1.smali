.class Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ContentFileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->-set0(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;F)F

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->-set1(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;F)F

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchDown()V

    .line 56
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchUp()V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/ContentFileMessage;->onClick(Landroid/view/View;)V

    .line 65
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
