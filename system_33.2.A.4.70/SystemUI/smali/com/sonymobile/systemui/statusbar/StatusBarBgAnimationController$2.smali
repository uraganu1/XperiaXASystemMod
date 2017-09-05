.class Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;
.super Ljava/lang/Object;
.source "StatusBarBgAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 113
    .local v0, "r":F
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->-get0(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->-get2(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 114
    .local v1, "x":F
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController$2;->this$0:Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;->-get3(Lcom/sonymobile/systemui/statusbar/StatusBarBgAnimationController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 111
    return-void
.end method
