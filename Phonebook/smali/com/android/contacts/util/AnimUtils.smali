.class public Lcom/android/contacts/util/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AnimUtils$AnimationCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = -0x1

.field public static final EASE_IN:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

.field public static final NO_DELAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/contacts/util/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/contacts/util/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/contacts/util/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crossFadeViews(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "fadeOut"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 47
    invoke-static {p0, p2}, Lcom/android/contacts/util/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 48
    invoke-static {p1, p2}, Lcom/android/contacts/util/AnimUtils;->fadeOut(Landroid/view/View;I)V

    .line 46
    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 2
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "durationMs"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/util/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 84
    return-void
.end method

.method public static fadeIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "delay"    # I
    .param p3, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 90
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 94
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/util/AnimUtils$2;

    invoke-direct {v2, p0, p3}, Lcom/android/contacts/util/AnimUtils$2;-><init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 116
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 117
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 89
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 1
    .param p0, "fadeOut"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/util/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 51
    return-void
.end method

.method public static fadeOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0, "fadeOut"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 59
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/util/AnimUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/util/AnimUtils$1;-><init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 78
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 79
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 56
    return-void
.end method

.method public static scaleIn(Landroid/view/View;IILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "startDelayMs"    # I
    .param p3, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    .line 131
    new-instance v5, Lcom/android/contacts/util/AnimUtils$3;

    invoke-direct {v5, p0, p3}, Lcom/android/contacts/util/AnimUtils$3;-><init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 154
    .local v5, "listener":Landroid/animation/AnimatorListenerAdapter;
    sget-object v6, Lcom/android/contacts/util/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/util/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 130
    return-void
.end method

.method private static scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startScaleValue"    # I
    .param p2, "endScaleValue"    # I
    .param p3, "durationMs"    # I
    .param p4, "startDelay"    # I
    .param p5, "listener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 192
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 193
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 198
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 199
    int-to-float v2, p2

    .line 198
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 200
    int-to-float v2, p2

    .line 198
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 204
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 205
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 207
    :cond_0
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 191
    return-void
.end method

.method public static scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "callback"    # Lcom/android/contacts/util/AnimUtils$AnimationCallback;

    .prologue
    const/4 v2, 0x0

    .line 165
    new-instance v5, Lcom/android/contacts/util/AnimUtils$4;

    invoke-direct {v5, p0, p2}, Lcom/android/contacts/util/AnimUtils$4;-><init>(Landroid/view/View;Lcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 186
    .local v5, "listener":Landroid/animation/AnimatorListenerAdapter;
    sget-object v6, Lcom/android/contacts/util/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 185
    const/4 v1, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/util/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 164
    return-void
.end method
