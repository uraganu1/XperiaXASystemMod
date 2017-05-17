.class Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$1;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$1;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-wrap0(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)V

    .line 170
    return-void
.end method
