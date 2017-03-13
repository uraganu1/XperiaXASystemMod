.class public Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;
.super Ljava/lang/Object;
.source "QsOpenGuideController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;,
        Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;
    }
.end annotation


# instance fields
.field private mGuide:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnGuideHideListener:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

.field private mShouldShowGuide:Z

.field private final mTimeoutRunnable:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mOnGuideHideListener:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mShouldShowGuide:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->hideGuide()V

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;-><init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mTimeoutRunnable:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mOnGuideHideListener:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

    .line 42
    return-void
.end method

.method private clearTimer()V
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mShouldShowGuide:Z

    .line 114
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mTimeoutRunnable:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method private getGuideShowCount(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string/jumbo v0, "SomcQsGuideShowCount"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hideGuide()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;-><init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 135
    return-void
.end method

.method private incGuideShowCount(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string/jumbo v1, "SomcQsGuideShowCount"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "current":I
    const-string/jumbo v1, "SomcQsGuideShowCount"

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method private initTimer()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mShouldShowGuide:Z

    .line 109
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mTimeoutRunnable:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method private isNeedToShowGuide(Z)Z
    .locals 2
    .param p1, "isPanelClosedOnDown"    # Z

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mShouldShowGuide:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showGuide(Landroid/view/ViewGroup;)Z
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 118
    const v0, 0x7f10016c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$1;-><init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V

    .line 129
    const-wide/16 v2, 0xfa0

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    return v1
.end method


# virtual methods
.method public isGuideShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->mGuide:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onExpandingFinished(Z)V
    .locals 0
    .param p1, "isFullyCollapsed"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->hideGuide()V

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->clearTimer()V

    .line 80
    :cond_0
    return-void
.end method

.method public onNotificationPanelOpened(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPanelClosedOnDown"    # Z

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->getGuideShowCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 53
    return-void

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->clearTimer()V

    .line 57
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->initTimer()V

    .line 47
    return-void
.end method

.method public onQuickSettingPanelClosed()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->clearTimer()V

    .line 75
    return-void
.end method

.method public onQuickSettingPanelOpened(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isPanelClosedOnDown"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p3}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->isNeedToShowGuide(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->showGuide(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->incGuideShowCount(Landroid/content/Context;)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->clearTimer()V

    .line 62
    return-void
.end method

.method public updateResources(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    return-void

    .line 99
    :cond_1
    const v1, 0x7f10016c

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 101
    const v1, 0x7f0a0102

    invoke-static {p1, v0, v1}, Lcom/sonymobile/systemui/statusbar/MarginUpdater;->updateBottomMargin(Landroid/content/Context;Landroid/view/View;I)V

    .line 102
    const v1, 0x7f0a0103

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 103
    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_2
    return-void
.end method
