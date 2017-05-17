.class Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageContentMmsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->-get2(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchDown()V

    .line 151
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->-get0(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->-get0(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->downloadMessage()V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;->-get2(Lcom/sonyericsson/conversations/ui/MessageContentMmsNotification;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onClick()V

    .line 145
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
