.class Lcom/android/incallui/CallCardFragment$13;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$isFullscreenMode:Z

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;
    .param p2, "val$observer"    # Landroid/view/ViewTreeObserver;
    .param p3, "val$isFullscreenMode"    # Z

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$13;->val$observer:Landroid/view/ViewTreeObserver;

    iput-boolean p3, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1890
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get8(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    .line 1896
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->-get8(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    .line 1895
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/CallCardFragment;->-wrap0(Lcom/android/incallui/CallCardFragment;Landroid/view/View;FZ)V

    .line 1899
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-get4(Lcom/android/incallui/CallCardFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1901
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->-get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    .line 1900
    sub-float/2addr v2, v3

    .line 1901
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->-get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 1900
    add-float/2addr v2, v3

    .line 1902
    iget-boolean v3, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    .line 1900
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/CallCardFragment;->-wrap0(Lcom/android/incallui/CallCardFragment;Landroid/view/View;FZ)V

    .line 1906
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    if-eqz v0, :cond_4

    .line 1907
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get2(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1908
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->-get2(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    .line 1907
    sub-float/2addr v2, v3

    .line 1909
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->-get2(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 1907
    add-float/2addr v2, v3

    .line 1909
    iget-boolean v3, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    .line 1907
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/CallCardFragment;->-wrap0(Lcom/android/incallui/CallCardFragment;Landroid/view/View;FZ)V

    .line 1918
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get0(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->-get0(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1919
    iget-boolean v3, p0, Lcom/android/incallui/CallCardFragment$13;->val$isFullscreenMode:Z

    .line 1918
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/CallCardFragment;->-wrap0(Lcom/android/incallui/CallCardFragment;Landroid/view/View;FZ)V

    .line 1921
    return v4

    .line 1911
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0, v4}, Lcom/android/incallui/CallCardFragment;->-wrap2(Lcom/android/incallui/CallCardFragment;Z)V

    .line 1912
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-get1(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1913
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$13;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->-get2(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
