.class Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;
.super Ljava/lang/Object;
.source "HorizontalMotionController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrimFractionInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/HorizontalMotionController$ScrimFractionInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 476
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 477
    return v1

    .line 479
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const v1, 0x3f7ae148    # 0.98f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
