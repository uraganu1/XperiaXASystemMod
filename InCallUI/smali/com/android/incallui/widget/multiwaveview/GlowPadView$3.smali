.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;
.super Ljava/lang/Object;
.source "GlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->invalidate()V

    .line 192
    return-void
.end method
