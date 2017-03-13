.class public Lcom/sonymobile/systemui/statusbar/SomcDismissView;
.super Lcom/android/systemui/statusbar/DismissView;
.source "SomcDismissView.java"


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/SomcDismissView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->dismissAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DismissView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private dismissAnimation()V
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findDismissViewButton()Lcom/android/systemui/statusbar/DismissViewButton;

    move-result-object v2

    .line 81
    .local v2, "v":Landroid/view/View;
    const/4 v0, 0x0

    .line 82
    .local v0, "transX":F
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findTextView()Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "tv":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 79
    return-void
.end method

.method private findTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static updateResources(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 4
    .param p0, "view"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 63
    instance-of v2, p0, Lcom/sonymobile/systemui/statusbar/SomcDismissView;

    if-nez v2, :cond_0

    .line 64
    return-void

    :cond_0
    move-object v0, p0

    .line 66
    check-cast v0, Lcom/sonymobile/systemui/statusbar/SomcDismissView;

    .line 67
    .local v0, "dismissView":Lcom/sonymobile/systemui/statusbar/SomcDismissView;
    const v2, 0x7f10017b

    const v3, 0x7f0a00fb

    invoke-static {v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 69
    invoke-direct {v0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findTextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 71
    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findDismissViewButton()Lcom/android/systemui/statusbar/DismissViewButton;
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    return-object v0
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;-><init>(Lcom/sonymobile/systemui/statusbar/SomcDismissView;Landroid/view/View$OnClickListener;)V

    .line 46
    .local v0, "listenerWrapper":Landroid/view/View$OnClickListener;
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .end local v0    # "listenerWrapper":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0, v1}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showClearButton()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    .line 55
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->findTextView()Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "tv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 53
    :cond_0
    return-void
.end method
