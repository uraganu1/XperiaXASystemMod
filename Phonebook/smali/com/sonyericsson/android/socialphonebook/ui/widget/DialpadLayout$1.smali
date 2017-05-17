.class Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout$1;
.super Ljava/lang/Object;
.source "DialpadLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->minimizeDialpad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/widget/DialpadLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 67
    return-void
.end method
