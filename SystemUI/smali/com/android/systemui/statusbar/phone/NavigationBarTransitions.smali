.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
    }
.end annotation


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

.field private final mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 10
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 48
    const v2, 0x7f02022a

    .line 49
    const v3, 0x7f02021a

    .line 50
    const v4, 0x7f02022c

    .line 51
    const v5, 0x7f02021b

    .line 52
    const v6, 0x7f020226

    .line 53
    const v7, 0x7f020228

    .line 54
    const v8, 0x7f02021d

    .line 55
    const v9, 0x7f02021c

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;IIIIIIII)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 59
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 47
    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 10
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 142
    if-nez p3, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v7, :cond_0

    return-void

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    .line 146
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1000bf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 147
    .local v3, "navButtons":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f1000c5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "lowLights":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 153
    if-eqz p1, :cond_1

    const/4 v4, 0x0

    .line 154
    .local v4, "navButtonsAlpha":F
    :goto_0
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 156
    .local v2, "lowLightsAlpha":F
    :goto_1
    if-nez p2, :cond_4

    .line 157
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 159
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_3
    return-void

    .line 153
    .end local v2    # "lowLightsAlpha":F
    .end local v4    # "navButtonsAlpha":F
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "navButtonsAlpha":F
    goto :goto_0

    .line 154
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "lowLightsAlpha":F
    goto :goto_1

    :cond_3
    move v5, v6

    .line 159
    goto :goto_2

    .line 161
    :cond_4
    if-eqz p1, :cond_6

    const/16 v0, 0x2ee

    .line 162
    .local v0, "duration":I
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 164
    int-to-long v8, v0

    .line 162
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 170
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 174
    int-to-long v6, v0

    .line 172
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 175
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 172
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 176
    if-eqz p1, :cond_7

    const/4 v5, 0x0

    .line 172
    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 161
    .end local v0    # "duration":I
    :cond_6
    const/16 v0, 0xfa

    .restart local v0    # "duration":I
    goto :goto_4

    .line 176
    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V

    goto :goto_5
.end method

.method private applyMode(IZZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 138
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    .line 135
    return-void
.end method


# virtual methods
.method public finishAnimations()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->finishAnimations()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->finishAnimations()V

    .line 128
    return-void
.end method

.method public getButtonTransitionsRot0()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    return-object v0
.end method

.method public getButtonTransitionsRot90()Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .param p1, "isVertical"    # Z

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    .line 62
    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 5
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 109
    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    .line 117
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v2

    .line 118
    .local v2, "toLightsOut":Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v1

    .line 119
    .local v1, "fromLightsOut":Z
    if-eqz p3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "duration":I
    :goto_0
    if-nez v2, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot0:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getBackgroundLayer(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->startTransitions(II)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mButtonTransitionsRot90:Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getBackgroundLayer(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/NavigationButtonTransitions;->startTransitions(II)V

    .line 107
    :cond_1
    return-void

    .line 119
    .end local v0    # "duration":I
    :cond_2
    if-nez v1, :cond_0

    const/16 v0, 0xc8

    .restart local v0    # "duration":I
    goto :goto_0
.end method

.method public setVertical(Z)V
    .locals 9
    .param p1, "isVertical"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const v1, 0x7f02022b

    .line 73
    const v2, 0x7f02021e

    .line 74
    const v3, 0x7f02022d

    .line 75
    const v4, 0x7f02021f

    .line 76
    const v5, 0x7f020227

    .line 77
    const v6, 0x7f020229

    .line 78
    const v7, 0x7f020221

    .line 79
    const v8, 0x7f020220

    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setResourceIds(IIIIIIII)V

    .line 68
    :goto_0
    return-void

    .line 81
    :cond_0
    const v1, 0x7f02022a

    .line 82
    const v2, 0x7f02021a

    .line 83
    const v3, 0x7f02022c

    .line 84
    const v4, 0x7f02021b

    .line 85
    const v5, 0x7f020226

    .line 86
    const v6, 0x7f020228

    .line 87
    const v7, 0x7f02021d

    .line 88
    const v8, 0x7f02021c

    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setResourceIds(IIIIIIII)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    .line 95
    return-void
.end method
