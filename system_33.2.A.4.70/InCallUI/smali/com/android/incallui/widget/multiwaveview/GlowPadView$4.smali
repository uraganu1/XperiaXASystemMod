.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


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
    .line 198
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap5(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V

    .line 202
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-set1(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)I

    .line 203
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0, v2, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap4(Lcom/android/incallui/widget/multiwaveview/GlowPadView;ZZ)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-set0(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Z)Z

    .line 199
    return-void
.end method
