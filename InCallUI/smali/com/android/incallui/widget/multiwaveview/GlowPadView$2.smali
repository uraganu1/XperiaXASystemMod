.class Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;
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
    .line 183
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->ping()V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get5(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-get6(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap6(Lcom/android/incallui/widget/multiwaveview/GlowPadView;IFF)V

    .line 187
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;->this$0:Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->-wrap2(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    .line 184
    return-void
.end method
