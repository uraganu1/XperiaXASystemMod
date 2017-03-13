.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# instance fields
.field public alpha:F

.field p:F

.field public rect:Landroid/graphics/Rect;

.field public scale:F

.field public startDelay:I

.field public translationY:I

.field public translationZ:F

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 29
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 30
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 31
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 32
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 35
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 37
    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 137
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 138
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 139
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 140
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 142
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 134
    return-void
.end method


# virtual methods
.method public applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "interp"    # Landroid/view/animation/Interpolator;
    .param p4, "allowLayers"    # Z
    .param p5, "allowShadows"    # Z
    .param p6, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v4, 0x0

    .line 82
    if-lez p2, :cond_7

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const/4 v1, 0x0

    .line 87
    .local v1, "requiresLayers":Z
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 90
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 95
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 94
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 96
    const/4 v1, 0x1

    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 101
    const/4 v1, 0x1

    .line 103
    :cond_3
    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 106
    :cond_4
    if-eqz p6, :cond_6

    .line 107
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 111
    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 112
    int-to-long v4, p2

    .line 111
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 80
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_5
    :goto_1
    return-void

    .line 109
    .restart local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .restart local v1    # "requiresLayers":Z
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 117
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "requiresLayers":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationYChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 120
    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 121
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 123
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 125
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 127
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public hasAlphaChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 66
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasScaleChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 69
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationYChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 72
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 75
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 55
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 56
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 57
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 58
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 61
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TaskViewTransform delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " scale: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " alpha: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " visible: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " rect: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, " p: "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
