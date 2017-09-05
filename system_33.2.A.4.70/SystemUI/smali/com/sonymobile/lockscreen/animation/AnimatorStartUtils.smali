.class public Lcom/sonymobile/lockscreen/animation/AnimatorStartUtils;
.super Ljava/lang/Object;
.source "AnimatorStartUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startWithCustomizedDurationScale(Landroid/content/Context;Landroid/animation/Animator;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 33
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    .line 34
    .local v0, "durationScale":F
    const/4 v2, 0x0

    .line 36
    .local v2, "started":Z
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_0

    .line 37
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 38
    .local v1, "pm":Landroid/os/PowerManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 42
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 43
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 44
    const/4 v2, 0x1

    .line 48
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    if-nez v2, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 32
    :cond_1
    return-void
.end method
