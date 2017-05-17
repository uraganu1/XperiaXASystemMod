.class Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;
    .param p2, "val$lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "val$originalHeight"    # I

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get0(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v1}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v2}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get1(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->val$originalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-void
.end method
