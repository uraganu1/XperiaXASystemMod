.class Lcom/android/systemui/statusbar/phone/ScrimController$1;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "val$scrim"    # Landroid/view/View;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 392
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-wrap0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;F)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-wrap2(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    .line 390
    return-void
.end method
