.class Lcom/android/systemui/ViewInvertHelper$1;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ViewInvertHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ViewInvertHelper;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/ViewInvertHelper;->-wrap0(Lcom/android/systemui/ViewInvertHelper;F)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v0}, Lcom/android/systemui/ViewInvertHelper;->-get1(Lcom/android/systemui/ViewInvertHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v1}, Lcom/android/systemui/ViewInvertHelper;->-get0(Lcom/android/systemui/ViewInvertHelper;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    return-void
.end method
