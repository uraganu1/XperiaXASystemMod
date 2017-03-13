.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mHasNavBarScrim:Z

.field mHasStatusBarScrim:Z

.field mNavBarScrimView:Landroid/view/View;

.field mShouldAnimateNavBarScrim:Z

.field mShouldAnimateStatusBarScrim:Z

.field mStatusBarScrimView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 39
    const v0, 0x7f1000ee

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    .line 40
    const v0, 0x7f1000f2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public prepareEnterRecentsAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 49
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    .line 53
    iget-object v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void

    :cond_3
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public startEnterRecentsAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 67
    :goto_0
    int-to-long v2, v0

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    int-to-long v2, v1

    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/systemui/recents/views/SystemBarScrimViews$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews$1;-><init>(Lcom/android/systemui/recents/views/SystemBarScrimViews;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 84
    :goto_1
    int-to-long v2, v0

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    int-to-long v2, v1

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews$2;-><init>(Lcom/android/systemui/recents/views/SystemBarScrimViews;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    :cond_1
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    goto :goto_1
.end method

.method public startExitRecentsAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v1

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v1

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 103
    :cond_1
    return-void
.end method
