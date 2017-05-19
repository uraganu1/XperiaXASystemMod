.class public Lcom/android/contacts/common/widget/FloatingActionButtonController;
.super Ljava/lang/Object;
.source "FloatingActionButtonController.java"


# instance fields
.field private final mAnimationDuration:I

.field private final mFabInterpolator:Landroid/view/animation/Interpolator;

.field private final mFloatingActionButton:Landroid/widget/ImageButton;

.field private final mFloatingActionButtonContainer:Landroid/view/View;

.field private final mFloatingActionButtonMarginRight:I

.field private final mFloatingActionButtonWidth:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "button"    # Landroid/widget/ImageButton;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10c000d

    .line 53
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    const v1, 0x7f080067

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    .line 58
    const v1, 0x7f08006b

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    .line 60
    const v1, 0x7f0a0002

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    .line 61
    iput-object p2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 63
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/contacts/common/util/ViewUtil;->setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 51
    return-void
.end method

.method private isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 228
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public align(IIIZ)V
    .locals 4
    .param p1, "align"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "animate"    # Z

    .prologue
    .line 129
    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    if-nez v1, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->getTranslationXForAlignment(I)I

    move-result v0

    .line 136
    .local v0, "translationX":I
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 138
    add-int v2, v0, p2

    int-to-float v2, v2

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 139
    int-to-float v2, p3

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFabInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 141
    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    int-to-long v2, v2

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 128
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    add-int v2, v0, p2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public getTranslationXForAlignment(I)I
    .locals 3
    .param p1, "align"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    mul-int/lit8 v0, v0, -0x1

    .line 224
    :cond_0
    return v0

    .line 209
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 212
    :pswitch_1
    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/lit8 v0, v1, 0x4

    goto :goto_0

    .line 216
    :pswitch_2
    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 217
    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 216
    sub-int/2addr v1, v2

    .line 218
    iget v2, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonMarginRight:I

    .line 216
    sub-int v0, v1, v2

    .line 219
    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resize(IZ)V
    .locals 1
    .param p1, "dimension"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v0, p1, p1}, Lcom/android/phone/common/animation/AnimUtils;->changeDimensions(Landroid/view/View;II)V

    .line 154
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public scaleIn(I)V
    .locals 4
    .param p1, "delayMs"    # I

    .prologue
    const/16 v3, 0x10a

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-static {v0, v3, p1}, Lcom/android/phone/common/animation/AnimUtils;->scaleIn(Landroid/view/View;II)V

    .line 172
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 173
    add-int/lit8 v1, p1, 0x64

    const/4 v2, 0x0

    .line 172
    invoke-static {v0, v3, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    .line 169
    return-void
.end method

.method public scaleOut()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mAnimationDuration:I

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->scaleOut(Landroid/view/View;I)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    .line 190
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mScreenWidth:I

    .line 72
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/contacts/common/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void

    .line 82
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
