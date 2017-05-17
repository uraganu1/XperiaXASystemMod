.class Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;
.super Ljava/lang/Object;
.source "MmsMessageContentTextSimple.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
    .param p2, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 103
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
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$TouchListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-get0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchUp()V

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
