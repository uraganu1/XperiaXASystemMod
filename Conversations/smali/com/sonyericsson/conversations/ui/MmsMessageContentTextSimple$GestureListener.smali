.class Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MmsMessageContentTextSimple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field mViewToCompensateFor:Landroid/view/View;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->mViewToCompensateFor:Landroid/view/View;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;
    .param p2, "viewToConpensateFor"    # Landroid/view/View;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->mViewToCompensateFor:Landroid/view/View;

    .line 127
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->mViewToCompensateFor:Landroid/view/View;

    .line 126
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-set0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;F)F

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "yDisplacement":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->mViewToCompensateFor:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->mViewToCompensateFor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-set1(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;F)F

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-get0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onTouchDown()V

    .line 147
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-get0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple$GestureListener;->this$0:Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;->-get0(Lcom/sonyericsson/conversations/ui/MmsMessageContentTextSimple;)Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;->onClick()V

    .line 135
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
