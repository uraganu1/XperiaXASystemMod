.class Lcom/android/systemui/assist/AssistOrbView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AssistOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistOrbView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$2;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$2;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistOrbView;->-set0(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 71
    return-void
.end method
