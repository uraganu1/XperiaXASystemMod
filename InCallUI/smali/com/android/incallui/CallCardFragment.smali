.class public Lcom/android/incallui/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragment$CallStateLabel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallButtonsContainer:Landroid/view/View;

.field private mCallNumberAndLabel:Landroid/view/View;

.field private mCallStateButton:Landroid/view/View;

.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelResetPending:Z

.field private mCallStateVideoCallIcon:Landroid/widget/ImageView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mCallWidgetContainer:Landroid/widget/FrameLayout;

.field private mCallWidgetToAnimate:Landroid/view/ViewGroup;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mFabNormalDiameter:I

.field private mFabSmallDiameter:I

.field private mFloatingActionButton:Landroid/widget/ImageButton;

.field private mFloatingActionButtonContainer:Landroid/view/View;

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mFloatingActionButtonVerticalOffset:I

.field private mHandler:Landroid/os/Handler;

.field private mHasSecondaryCallInfo:Z

.field private mHdAudioIcon:Landroid/widget/ImageView;

.field private mInCallMessageLabel:Landroid/widget/TextView;

.field private mIsAnimating:Z

.field private mIsDialpadShowing:Z

.field private mIsLandscape:Z

.field private mManageConferenceCallButton:Landroid/view/View;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoAlphaAnsweringMachine:F

.field private mPhotoAlphaDefault:F

.field private mPhotoAlphaEndCall:F

.field private mPhotoAlphaHeldCall:F

.field protected mPhotoLowRes:Landroid/widget/ImageView;

.field private mPhotoScaleDefault:F

.field private mPhotoScaleInactive:F

.field private mPostResetCallStateLabel:Ljava/lang/CharSequence;

.field private mPrimaryCallCardContainer:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field protected mPrimaryCallSubIndicator:Landroid/widget/ImageView;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressSpinner:Landroid/view/View;

.field private mPulseAnimation:Landroid/view/animation/Animation;

.field private mSecondaryCallInfo:Landroid/view/View;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field protected mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallProviderInfo:Landroid/view/View;

.field private mSecondaryCallProviderLabel:Landroid/widget/TextView;

.field protected mSecondaryCallSubIndicator:Landroid/widget/ImageView;

.field protected mShowPhotoLowRes:Z

.field private mShrinkAnimationDuration:I

.field private mTranslationOffset:F

.field private mUseCallInfoHeader:Z

.field private mVideoAnimationDuration:I

.field private mVideoCancelRequestButton:Landroid/widget/TextView;

.field protected mVolteIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/CallCardFragment;)Lcom/android/contacts/common/widget/FloatingActionButtonController;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mHasSecondaryCallInfo:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/incallui/CallCardFragment;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPostResetCallStateLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/CallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelResetPending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/CallCardFragment;Landroid/view/View;FZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationY"    # F
    .param p3, "isFullscreenMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardFragment;->animateTranslationY(Landroid/view/View;FZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/CallCardFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "callStateLabel"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->changeCallStateLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/CallCardFragment;Z)V
    .locals 0
    .param p1, "doAnimation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->updateFabPositionExt(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->updateFabPositionForSecondaryCallInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mShowPhotoLowRes:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelResetPending:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mHasSecondaryCallInfo:Z

    .line 74
    return-void
.end method

.method private animatePhotoAreaSize(FF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1443
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 1444
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1446
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 1447
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1449
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    .line 1450
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1440
    :cond_2
    return-void
.end method

.method private animateTranslationY(Landroid/view/View;FZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationY"    # F
    .param p3, "isFullscreenMode"    # Z

    .prologue
    .line 1928
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1929
    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    .line 1928
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1930
    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mVideoAnimationDuration:I

    int-to-long v2, v2

    .line 1928
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1931
    if-eqz p3, :cond_0

    .line 1928
    .end local p2    # "translationY":F
    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1932
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1927
    return-void

    .line 1931
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .restart local p2    # "translationY":F
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private assignGlideInY(Landroid/view/View;II)Landroid/view/ViewPropertyAnimator;
    .locals 4
    .param p1, "glideIn"    # Landroid/view/View;
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1456
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1457
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1458
    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1459
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CallCardFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/CallCardFragment$7;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1469
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1470
    return-object v0
.end method

.method private changeCallStateLabel(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "callStateLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCallStateLabel : label = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 960
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 963
    .local v0, "callStateLabelAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 968
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1599
    if-nez p2, :cond_0

    return-void

    .line 1600
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1601
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1602
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1604
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1605
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    :cond_1
    return-void
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;IZZZ)Lcom/android/incallui/CallCardFragment$CallStateLabel;
    .locals 8
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "preciseCause"    # I
    .param p7, "isGatewayCall"    # Z
    .param p8, "isWifi"    # Z
    .param p9, "isConference"    # Z

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1113
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 1115
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    .line 1116
    .local v2, "hasSuggestedLabel":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p7, :cond_3

    :cond_0
    const/4 v3, 0x0

    .line 1117
    .local v3, "isAccount":Z
    :goto_1
    const/4 v4, 0x0

    .line 1119
    .local v4, "isAutoDismissing":Z
    packed-switch p1, :pswitch_data_0

    .line 1200
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    :pswitch_1
    new-instance v5, Lcom/android/incallui/CallCardFragment$CallStateLabel;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/incallui/CallCardFragment$CallStateLabel;-><init>(Lcom/android/incallui/CallCardFragment;Ljava/lang/CharSequence;Z)V

    return-object v5

    .line 1115
    .end local v2    # "hasSuggestedLabel":Z
    .end local v3    # "isAccount":Z
    .end local v4    # "isAutoDismissing":Z
    .restart local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hasSuggestedLabel":Z
    goto :goto_0

    .line 1116
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isAccount":Z
    goto :goto_1

    .line 1127
    .restart local v4    # "isAutoDismissing":Z
    :pswitch_2
    const/4 v5, 0x5

    .line 1126
    if-ne p3, v5, :cond_6

    .line 1128
    const v5, 0x7f0b0308

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 1145
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_4
    :goto_3
    if-nez v3, :cond_5

    if-nez p8, :cond_5

    if-eqz p9, :cond_1

    :cond_5
    if-eqz v2, :cond_1

    .line 1146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1147
    move-object v0, p5

    .restart local v0    # "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1131
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_6
    const/4 v5, 0x2

    .line 1130
    if-ne p3, v5, :cond_7

    .line 1132
    const v5, 0x7f0b0307

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    goto :goto_3

    .line 1135
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_7
    const/4 v5, 0x1

    .line 1134
    if-ne p3, v5, :cond_8

    .line 1136
    invoke-static {p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1139
    :cond_8
    const/4 v5, 0x3

    .line 1138
    if-ne p3, v5, :cond_a

    .line 1140
    const v5, 0x7f0b028c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1137
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_9
    const v5, 0x7f0b0285

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1141
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1142
    const v5, 0x7f0b0305

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1146
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_b
    const-string/jumbo v5, ""

    goto :goto_4

    .line 1151
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_3
    const v5, 0x7f0b0300

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1155
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_4
    if-eqz v2, :cond_c

    if-eqz p8, :cond_d

    .line 1158
    :cond_c
    const v5, 0x7f0b02fb

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1156
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_d
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const v6, 0x7f0b034d

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1162
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_5
    const v5, 0x7f0b02fc

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1166
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_6
    if-eqz p8, :cond_e

    if-eqz v2, :cond_e

    .line 1167
    move-object v0, p5

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1168
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_e
    if-eqz v3, :cond_f

    .line 1169
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const v6, 0x7f0b034e

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1170
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_f
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1171
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v5

    .line 1170
    if-eqz v5, :cond_11

    .line 1172
    :cond_10
    const v5, 0x7f0b0315

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1174
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_11
    const v5, 0x7f0b02fe

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1184
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_7
    const v5, 0x7f0b0301

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1187
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1188
    invoke-direct {p0, p6, p4}, Lcom/android/incallui/CallCardFragment;->getSomcCallFailedString(ILandroid/telecom/DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1190
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_12
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1191
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1192
    const v5, 0x7f0b02a0

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1197
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_9
    const v5, 0x7f0b02fd

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1119
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getSomcCallFailedString(ILandroid/telecom/DisconnectCause;)Ljava/lang/String;
    .locals 2
    .param p1, "preciseCause"    # I
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1206
    const v0, 0x7f0b02a0

    .line 1207
    .local v0, "resID":I
    sparse-switch p1, :sswitch_data_0

    .line 1358
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1369
    const v0, 0x7f0b02a0

    .line 1374
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1209
    :sswitch_0
    const v0, 0x7f0b02a4

    .line 1210
    goto :goto_0

    .line 1212
    :sswitch_1
    const v0, 0x7f0b02a5

    .line 1213
    goto :goto_0

    .line 1215
    :sswitch_2
    const v0, 0x7f0b02a6

    .line 1216
    goto :goto_0

    .line 1218
    :sswitch_3
    const v0, 0x7f0b02a7

    .line 1219
    goto :goto_0

    .line 1221
    :sswitch_4
    const v0, 0x7f0b02a8

    .line 1222
    goto :goto_0

    .line 1224
    :sswitch_5
    const v0, 0x7f0b02a9

    .line 1225
    goto :goto_0

    .line 1227
    :sswitch_6
    const v0, 0x7f0b02aa

    .line 1228
    goto :goto_0

    .line 1230
    :sswitch_7
    const v0, 0x7f0b02ab

    .line 1231
    goto :goto_0

    .line 1233
    :sswitch_8
    const v0, 0x7f0b02ac

    .line 1234
    goto :goto_0

    .line 1236
    :sswitch_9
    const v0, 0x7f0b02ad

    .line 1237
    goto :goto_0

    .line 1239
    :sswitch_a
    const v0, 0x7f0b02ae

    .line 1240
    goto :goto_0

    .line 1242
    :sswitch_b
    const v0, 0x7f0b02af

    .line 1243
    goto :goto_0

    .line 1245
    :sswitch_c
    const v0, 0x7f0b02b0

    .line 1246
    goto :goto_0

    .line 1248
    :sswitch_d
    const v0, 0x7f0b02b1

    .line 1249
    goto :goto_0

    .line 1251
    :sswitch_e
    const v0, 0x7f0b02b2

    .line 1252
    goto :goto_0

    .line 1254
    :sswitch_f
    const v0, 0x7f0b02b3

    .line 1255
    goto :goto_0

    .line 1257
    :sswitch_10
    const v0, 0x7f0b02b4

    .line 1258
    goto :goto_0

    .line 1260
    :sswitch_11
    const v0, 0x7f0b02b5

    .line 1261
    goto :goto_0

    .line 1263
    :sswitch_12
    const v0, 0x7f0b02b6

    .line 1264
    goto :goto_0

    .line 1266
    :sswitch_13
    const v0, 0x7f0b02b7

    .line 1267
    goto :goto_0

    .line 1269
    :sswitch_14
    const v0, 0x7f0b02b8

    .line 1270
    goto :goto_0

    .line 1272
    :sswitch_15
    const v0, 0x7f0b02b9

    .line 1273
    goto :goto_0

    .line 1275
    :sswitch_16
    const v0, 0x7f0b02ba

    .line 1276
    goto :goto_0

    .line 1278
    :sswitch_17
    const v0, 0x7f0b02bb

    .line 1279
    goto :goto_0

    .line 1281
    :sswitch_18
    const v0, 0x7f0b02bc

    .line 1282
    goto :goto_0

    .line 1284
    :sswitch_19
    const v0, 0x7f0b02bd

    .line 1285
    goto :goto_0

    .line 1287
    :sswitch_1a
    const v0, 0x7f0b02be

    .line 1288
    goto :goto_0

    .line 1290
    :sswitch_1b
    const v0, 0x7f0b02bf

    .line 1291
    goto :goto_0

    .line 1293
    :sswitch_1c
    const v0, 0x7f0b02c0

    .line 1294
    goto :goto_0

    .line 1296
    :sswitch_1d
    const v0, 0x7f0b02c1

    .line 1297
    goto/16 :goto_0

    .line 1299
    :sswitch_1e
    const v0, 0x7f0b02c2

    .line 1300
    goto/16 :goto_0

    .line 1302
    :sswitch_1f
    const v0, 0x7f0b02c3

    .line 1303
    goto/16 :goto_0

    .line 1305
    :sswitch_20
    const v0, 0x7f0b02c4

    .line 1306
    goto/16 :goto_0

    .line 1308
    :sswitch_21
    const v0, 0x7f0b02c5

    .line 1310
    goto/16 :goto_0

    .line 1312
    :sswitch_22
    const v0, 0x7f0b02c6

    .line 1313
    goto/16 :goto_0

    .line 1315
    :sswitch_23
    const v0, 0x7f0b02c7

    .line 1316
    goto/16 :goto_0

    .line 1318
    :sswitch_24
    const v0, 0x7f0b02c8

    .line 1319
    goto/16 :goto_0

    .line 1321
    :sswitch_25
    const v0, 0x7f0b02c9

    .line 1322
    goto/16 :goto_0

    .line 1324
    :sswitch_26
    const v0, 0x7f0b02ca

    .line 1325
    goto/16 :goto_0

    .line 1327
    :sswitch_27
    const v0, 0x7f0b02cb

    .line 1328
    goto/16 :goto_0

    .line 1330
    :sswitch_28
    const v0, 0x7f0b02cc

    .line 1331
    goto/16 :goto_0

    .line 1333
    :sswitch_29
    const v0, 0x7f0b02cd

    .line 1334
    goto/16 :goto_0

    .line 1336
    :sswitch_2a
    const v0, 0x7f0b02ce

    .line 1337
    goto/16 :goto_0

    .line 1339
    :sswitch_2b
    const v0, 0x7f0b02cf

    .line 1341
    goto/16 :goto_0

    .line 1343
    :sswitch_2c
    const v0, 0x7f0b02d0

    .line 1344
    goto/16 :goto_0

    .line 1346
    :sswitch_2d
    const v0, 0x7f0b02d1

    .line 1347
    goto/16 :goto_0

    .line 1349
    :sswitch_2e
    const v0, 0x7f0b02d2

    .line 1350
    goto/16 :goto_0

    .line 1352
    :sswitch_2f
    const v0, 0x7f0b02d3

    .line 1353
    goto/16 :goto_0

    .line 1355
    :sswitch_30
    const v0, 0x7f0b02d4

    .line 1356
    goto/16 :goto_0

    .line 1360
    :pswitch_0
    const v0, 0x7f0b02a1

    .line 1361
    goto/16 :goto_0

    .line 1363
    :pswitch_1
    const v0, 0x7f0b02a2

    .line 1364
    goto/16 :goto_0

    .line 1366
    :pswitch_2
    const v0, 0x7f0b02a3

    .line 1367
    goto/16 :goto_0

    .line 1207
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1e -> :sswitch_f
        0x1f -> :sswitch_10
        0x22 -> :sswitch_11
        0x26 -> :sswitch_12
        0x29 -> :sswitch_13
        0x2a -> :sswitch_14
        0x2b -> :sswitch_15
        0x2c -> :sswitch_16
        0x2f -> :sswitch_17
        0x31 -> :sswitch_18
        0x32 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x39 -> :sswitch_1b
        0x3a -> :sswitch_1c
        0x3f -> :sswitch_1d
        0x41 -> :sswitch_1e
        0x44 -> :sswitch_1f
        0x45 -> :sswitch_20
        0x46 -> :sswitch_21
        0x4f -> :sswitch_22
        0x51 -> :sswitch_23
        0x57 -> :sswitch_24
        0x58 -> :sswitch_25
        0x5b -> :sswitch_26
        0x5f -> :sswitch_27
        0x60 -> :sswitch_28
        0x61 -> :sswitch_29
        0x62 -> :sswitch_2a
        0x63 -> :sswitch_2b
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2e
        0x6f -> :sswitch_2f
        0x7f -> :sswitch_30
    .end sparse-switch

    .line 1358
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initializeSecondaryCallInfo(Z)V
    .locals 2
    .param p1, "hasProvider"    # Z

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1387
    const v1, 0x7f0f00bf

    .line 1386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    .line 1377
    :cond_1
    return-void
.end method

.method private setCallStateLabel(Lcom/android/incallui/CallCardFragment$CallStateLabel;)V
    .locals 4
    .param p1, "callStateLabel"    # Lcom/android/incallui/CallCardFragment$CallStateLabel;

    .prologue
    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallStateLabel : label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->isAutoDismissing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelResetPending:Z

    .line 933
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/CallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$6;-><init>(Lcom/android/incallui/CallCardFragment;)V

    .line 941
    const-wide/16 v2, 0xbb8

    .line 933
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 943
    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->changeCallStateLabel(Ljava/lang/CharSequence;)V

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPostResetCallStateLabel:Ljava/lang/CharSequence;

    .line 949
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelResetPending:Z

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p1}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->changeCallStateLabel(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isVisible"    # Z

    .prologue
    .line 1072
    if-nez p2, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1073
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p2, :cond_1

    .line 1078
    return-void

    .line 1080
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1082
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1083
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 1084
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1085
    if-eqz p3, :cond_2

    .line 1086
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 1071
    :cond_2
    :goto_0
    return-void

    .line 1092
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    if-eqz p3, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setSecondaryCallIcon(Z)V
    .locals 3
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1848
    .local v0, "secondaryIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1849
    if-eqz p1, :cond_1

    .line 1850
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setSecondaryInfoVisibleExt(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 1861
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 1862
    .local v1, "wasVisible":Z
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mHasSecondaryCallInfo:Z

    .line 1863
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSecondaryInfoVisible: wasVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1866
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    return-void

    .line 1862
    :cond_0
    const/4 v0, 0x0

    .local v0, "isVisible":Z
    goto :goto_0

    .line 1866
    .end local v0    # "isVisible":Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private showInternetCallLabel(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1044
    const v2, 0x7f0b0332

    .line 1043
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFabPositionExt(Z)V
    .locals 6
    .param p1, "doAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1704
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    return-void

    .line 1709
    :cond_0
    const/4 v0, 0x0

    .line 1710
    .local v0, "offsetX":I
    iget-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 1711
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080135

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v0, v2

    .line 1712
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080136

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v1, v2

    .line 1713
    .local v1, "offsetY":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1714
    mul-int/lit8 v0, v0, -0x1

    .line 1724
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1725
    iget-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 1724
    :goto_1
    invoke-virtual {v4, v2, v0, v1, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IIIZ)V

    .line 1731
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1732
    iget-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mFabSmallDiameter:I

    .line 1731
    :goto_2
    invoke-virtual {v4, v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->resize(IZ)V

    .line 1702
    return-void

    .line 1717
    .end local v1    # "offsetY":I
    :cond_2
    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonVerticalOffset:I

    .line 1718
    .restart local v1    # "offsetY":I
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1726
    goto :goto_1

    .line 1732
    :cond_4
    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mFabNormalDiameter:I

    goto :goto_2
.end method

.method private updateFabPositionForSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1769
    new-instance v1, Lcom/android/incallui/CallCardFragment$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$11;-><init>(Lcom/android/incallui/CallCardFragment;)V

    .line 1768
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1767
    return-void
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1474
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1476
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1477
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1478
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1479
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1482
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1483
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1484
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1485
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1486
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1488
    return-void
.end method

.method protected executeCallStateAnimation(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1396
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaAnsweringMachine:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->animatePhotoAreaSize(FF)V

    .line 1398
    return-void

    .line 1401
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1395
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1403
    :pswitch_1
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleDefault:F

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaHeldCall:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 1410
    :pswitch_2
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaDefault:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 1414
    :pswitch_3
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleDefault:F

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaDefault:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 1419
    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1423
    :cond_2
    :pswitch_5
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaEndCall:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 1401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    .prologue
    .line 211
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mIsAnimating:Z

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1573
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 238
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 239
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 240
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    .line 224
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mShrinkAnimationDuration:I

    .line 225
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mVideoAnimationDuration:I

    .line 226
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    const v1, 0x7f0800b5

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonVerticalOffset:I

    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    const v1, 0x7f0800cb

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFabNormalDiameter:I

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    const v1, 0x7f0800cc

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mFabSmallDiameter:I

    .line 220
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const-string/jumbo v1, "CallCardFragment onCreate"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 247
    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mTranslationOffset:F

    .line 249
    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 251
    return-object v0
.end method

.method public onDialpadVisibilityChange(Z)V
    .locals 1
    .param p1, "isShown"    # Z

    .prologue
    .line 1673
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mIsDialpadShowing:Z

    .line 1674
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardFragment;->updateFabPositionExt(Z)V

    .line 1672
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1737
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 1740
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z

    .line 1746
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1747
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1748
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/CallCardFragment$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/incallui/CallCardFragment$10;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1736
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 258
    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    .line 261
    const v3, 0x7f0f00cb

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallWidgetContainer:Landroid/widget/FrameLayout;

    .line 262
    const v3, 0x7f0f00b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 263
    const v3, 0x7f0f00ad

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 264
    const v3, 0x7f0f006f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 265
    const v3, 0x7f0f00d8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 266
    const v3, 0x7f0f0035

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallInfo:Landroid/view/View;

    .line 267
    const v3, 0x7f0f00be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderInfo:Landroid/view/View;

    .line 268
    const v3, 0x7f0f002e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 269
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 270
    const v3, 0x7f0f00ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    .line 271
    const v3, 0x7f0f00aa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 272
    const v3, 0x7f0f00ab

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    .line 273
    const v3, 0x7f0f00ac

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 274
    const v3, 0x7f0f00ae

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mHdAudioIcon:Landroid/widget/ImageView;

    .line 275
    const v3, 0x7f0f00af

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    .line 276
    const v3, 0x7f0f00b5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    .line 277
    const v3, 0x7f0f00b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 278
    const v3, 0x7f0f002a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    .line 279
    const v3, 0x7f0f00a8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 280
    const v3, 0x7f0f002b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;

    .line 281
    const v3, 0x7f0f002c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    .line 282
    const v3, 0x7f0f0030

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProgressSpinner:Landroid/view/View;

    .line 283
    const v3, 0x7f0f00b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    .line 286
    const v3, 0x7f0f0033

    .line 285
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    .line 288
    const v3, 0x7f0f0034

    .line 287
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 289
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallCardFragment$1;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v3, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 296
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 295
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 298
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0f00d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "switchCallButton":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/CallCardFragment$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/CallCardFragment$2;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v3, 0x7f0f00a9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateButton:Landroid/view/View;

    .line 320
    const v3, 0x7f0f0075

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    .line 321
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    new-instance v4, Lcom/android/incallui/CallCardFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallCardFragment$3;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v3, 0x7f0f00b4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mVideoCancelRequestButton:Landroid/widget/TextView;

    .line 330
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mVideoCancelRequestButton:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mVideoCancelRequestButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/incallui/CallCardFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/CallCardFragment$4;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 340
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 342
    const v3, 0x7f0f00b3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    .line 343
    const v3, 0x7f0f00dc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallSubIndicator:Landroid/widget/ImageView;

    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 347
    .local v2, "val":Landroid/util/TypedValue;
    const v3, 0x7f0800d8

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 348
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaDefault:F

    .line 349
    const v3, 0x7f0800d9

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 350
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaHeldCall:F

    .line 351
    const v3, 0x7f0800da

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 352
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaEndCall:F

    .line 353
    const v3, 0x7f0800db

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 354
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoAlphaAnsweringMachine:F

    .line 356
    const v3, 0x7f0800dc

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 357
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleDefault:F

    .line 358
    const v3, 0x7f0800dd

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 359
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/incallui/CallCardFragment;->mPhotoScaleInactive:F

    .line 361
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {p0, v8}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    .line 255
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 4

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/CallCardFragment$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$8;-><init>(Lcom/android/incallui/CallCardFragment;)V

    .line 1503
    const-wide/16 v2, 0x1f4

    .line 1493
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1492
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 395
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 17
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "preciseCause"    # I
    .param p6, "connectionLabel"    # Ljava/lang/String;
    .param p7, "callStateIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "gatewayNumber"    # Ljava/lang/String;
    .param p9, "isWifi"    # Z
    .param p10, "isConference"    # Z

    .prologue
    .line 818
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x0

    .line 823
    .local v9, "isGatewayCall":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/SomcInCallUiUtils;->isHoldSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 825
    const/16 p1, 0x3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p5

    move/from16 v10, p9

    move/from16 v11, p10

    .line 828
    invoke-direct/range {v2 .. v11}, Lcom/android/incallui/CallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;IZZZ)Lcom/android/incallui/CallCardFragment$CallStateLabel;

    move-result-object v13

    .line 832
    .local v13, "callStateLabel":Lcom/android/incallui/CallCardFragment$CallStateLabel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoDismiss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->isAutoDismissing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 837
    const v3, 0x7f0a000e

    .line 836
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 838
    .local v14, "duration":I
    const/16 v16, 0x0

    .line 839
    .local v16, "widget":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 842
    .local v16, "widget":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v14}, Lcom/android/incallui/CallCardFragment;->assignGlideInY(Landroid/view/View;II)Landroid/view/ViewPropertyAnimator;

    .line 845
    .end local v16    # "widget":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    .line 848
    .end local v14    # "duration":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUseCallInfoHeader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/incallui/CallCardFragment;->mUseCallInfoHeader:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DisconnectCause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreciseDisconnectCause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gateway "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v15, 0x0

    .line 857
    .local v15, "showContactPhoto":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v15, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    invoke-virtual {v13}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 861
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 862
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 865
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/CallCardFragment;->executeCallStateAnimation(I)V

    .line 866
    return-void

    .line 818
    .end local v9    # "isGatewayCall":Z
    .end local v13    # "callStateLabel":Lcom/android/incallui/CallCardFragment$CallStateLabel;
    .end local v15    # "showContactPhoto":Z
    :cond_5
    const/4 v9, 0x1

    .restart local v9    # "isGatewayCall":Z
    goto/16 :goto_0

    .line 856
    .restart local v13    # "callStateLabel":Lcom/android/incallui/CallCardFragment$CallStateLabel;
    :cond_6
    const/4 v15, 0x1

    .restart local v15    # "showContactPhoto":Z
    goto :goto_1

    .line 857
    :cond_7
    const/16 v2, 0x8

    goto :goto_2

    .line 870
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/incallui/CallCardFragment;->setCallStateLabel(Lcom/android/incallui/CallCardFragment$CallStateLabel;)V

    .line 871
    invoke-virtual {v13}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 872
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 873
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 879
    :cond_a
    :goto_3
    if-eqz p7, :cond_10

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_b

    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 888
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 893
    :goto_4
    move-object/from16 v0, p7

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_c

    .line 894
    check-cast p7, Landroid/graphics/drawable/AnimationDrawable;

    .end local p7    # "callStateIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 908
    :cond_c
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 909
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 910
    const/4 v2, 0x1

    .line 909
    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    .line 911
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 918
    :goto_6
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    .line 919
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isRcsVideoShareEnabled()Z

    move-result v2

    .line 918
    if-eqz v2, :cond_13

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mVideoCancelRequestButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 925
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/CallCardFragment;->executeCallStateAnimation(I)V

    .line 817
    return-void

    .line 875
    .restart local p7    # "callStateIcon":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 887
    :cond_f
    invoke-virtual {v13}, Lcom/android/incallui/CallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 886
    if-nez v2, :cond_b

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardFragment;->mPulseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 897
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v12

    .line 898
    .local v12, "callStateIconAnimation":Landroid/view/animation/Animation;
    if-eqz v12, :cond_11

    .line 899
    invoke-virtual {v12}, Landroid/view/animation/Animation;->cancel()V

    .line 904
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 914
    .end local v12    # "callStateIconAnimation":Landroid/view/animation/Animation;
    .end local p7    # "callStateIcon":Landroid/graphics/drawable/Drawable;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mCallWidgetContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 922
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardFragment;->mVideoCancelRequestButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callbackNumber"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z

    .prologue
    const/4 v3, 0x0

    .line 999
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 1000
    return-void

    .line 1003
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    return-void

    .line 1009
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1011
    if-eqz p2, :cond_2

    const v0, 0x7f0b030a

    .line 1014
    .local v0, "stringResourceId":I
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/CallCardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mInCallMessageLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    return-void

    .line 1012
    .end local v0    # "stringResourceId":I
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const v0, 0x7f0b0309

    .restart local v0    # "stringResourceId":I
    goto :goto_0
.end method

.method public setEndCallButtonClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 1537
    const-string/jumbo v0, "setEndCallButtonClickable, "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1536
    :cond_0
    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1508
    const/4 p2, 0x0

    .line 1509
    .local p2, "animate":Z
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1510
    if-eqz p2, :cond_2

    .line 1511
    if-eqz p1, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 1525
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1526
    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardFragment;->updateFabPositionExt(Z)V

    .line 1507
    :cond_0
    return-void

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    goto :goto_0

    .line 1517
    :cond_2
    if-eqz p1, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1519
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1520
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1522
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFullScreenMode(Z)V
    .locals 2
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1880
    return-void

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1886
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/incallui/CallCardFragment$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/incallui/CallCardFragment$13;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1878
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isSipCall"    # Z
    .param p7, "isContactPhotoShown"    # Z
    .param p8, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 630
    const-string/jumbo v3, "Setting primary call"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 631
    if-eqz v3, :cond_0

    .line 633
    if-nez p1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 634
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 640
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoicemailString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "voicemailString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 642
    move-object p2, v2

    .line 647
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "voicemailString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 657
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, p4}, Lcom/android/incallui/CallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p6}, Lcom/android/incallui/CallCardFragment;->showInternetCallLabel(Z)V

    .line 664
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p5, p7}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 666
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 667
    :goto_1
    invoke-virtual {p0, p5, v0, p1, p7}, Lcom/android/incallui/CallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 629
    return-void

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 666
    :cond_2
    move-object v0, p2

    .local v0, "nameForImage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v3, -0x1

    .line 1054
    if-eqz p1, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 1058
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "callTimeElapsed":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/incallui/InCallDateUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "durationDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 1064
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1063
    .end local v1    # "durationDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1053
    .end local v0    # "callTimeElapsed":Ljava/lang/String;
    :goto_1
    return-void

    .line 1064
    .restart local v0    # "callTimeElapsed":Ljava/lang/String;
    .restart local v1    # "durationDescription":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1067
    .end local v0    # "callTimeElapsed":Ljava/lang/String;
    .end local v1    # "durationDescription":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public setPrimaryCallSubIndicator(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 975
    const v0, 0x7f020038

    .line 974
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 977
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    return-void

    .line 976
    :cond_0
    const v0, 0x7f020037

    goto :goto_0
.end method

.method public setPrimaryCallSubIndicatorVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "isVisible"    # Z

    .prologue
    const/16 v3, 0x8

    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 553
    const v2, 0x7f0800d2

    .line 552
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 555
    .local v0, "large_photo_minimum_size":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    .line 563
    new-instance v2, Lcom/android/incallui/CallCardFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallCardFragment$5;-><init>(Lcom/android/incallui/CallCardFragment;)V

    .line 562
    invoke-virtual {v1, p2, p3, v2, p0}, Lcom/android/incallui/ContactInfoCache;->generateArtworkForContact(Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 574
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lcom/android/incallui/SomcInCallUiUtils;->setRoundedDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mShowPhotoLowRes:Z

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    .end local v0    # "large_photo_minimum_size":F
    :cond_0
    :goto_0
    return-void

    .line 578
    .restart local v0    # "large_photo_minimum_size":F
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1, p4}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 584
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhotoLowRes:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 523
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 524
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 523
    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "nameDirection":I
    if-eqz p2, :cond_2

    .line 530
    const/4 v0, 0x3

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mProgressSpinner:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    return-void

    .line 384
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "providerLabel"    # Ljava/lang/String;
    .param p6, "isConference"    # Z
    .param p7, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p8, "isVideoCall"    # Z
    .param p9, "isFullscreen"    # Z

    .prologue
    .line 674
    if-eqz p1, :cond_6

    .line 675
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/CallCardFragment;->mHasSecondaryCallInfo:Z

    .line 676
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    .line 678
    .local v2, "hasProvider":Z
    :goto_0
    const/4 v2, 0x0

    .line 679
    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardFragment;->initializeSecondaryCallInfo(Z)V

    .line 683
    if-eqz p9, :cond_5

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardFragment;->setSecondaryInfoVisible(Z)V

    .line 685
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 686
    .local v1, "context":Landroid/content/Context;
    if-eqz p6, :cond_0

    .line 687
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 688
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->getConferenceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 691
    .end local v0    # "cache":Lcom/android/incallui/ContactInfoCache;
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v4, p7}, Lcom/android/incallui/SomcInCallUiUtils;->setRoundedDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 694
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 693
    .end local p2    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    if-eqz v2, :cond_2

    .line 697
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallProviderLabel:Landroid/widget/TextView;

    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_2
    invoke-direct {p0, p8}, Lcom/android/incallui/CallCardFragment;->setSecondaryCallIcon(Z)V

    .line 702
    const/4 v3, 0x0

    .line 703
    .local v3, "nameDirection":I
    if-eqz p3, :cond_3

    .line 704
    const/4 v3, 0x3

    .line 706
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 712
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "hasProvider":Z
    .end local v3    # "nameDirection":I
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->setSecondaryInfoVisibleExt(Z)V

    .line 672
    return-void

    .line 676
    .restart local p2    # "name":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "hasProvider":Z
    goto :goto_0

    .line 683
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 708
    .end local v2    # "hasProvider":Z
    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/CallCardFragment;->mHasSecondaryCallInfo:Z

    .line 709
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardFragment;->setSecondaryInfoVisible(Z)V

    goto :goto_2
.end method

.method public setSecondaryCallSubIndicator(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallSubIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 988
    const v0, 0x7f020036

    .line 987
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 986
    return-void

    .line 989
    :cond_0
    const v0, 0x7f020035

    goto :goto_0
.end method

.method public setSecondaryCallSubIndicatorVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallSubIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 724
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "fgAreaUsed"    # Z
    .param p2, "bgAreaUsed"    # Z
    .param p3, "viewToAnimate"    # Landroid/view/ViewGroup;

    .prologue
    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fgAreaUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bgAreaUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1871
    const-string/jumbo v1, " mUseCallInfoHeader: "

    .line 1870
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1871
    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mUseCallInfoHeader:Z

    .line 1870
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1872
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mUseCallInfoHeader:Z

    .line 1873
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mShowPhotoLowRes:Z

    .line 1874
    iput-object p3, p0, Lcom/android/incallui/CallCardFragment;->mCallWidgetToAnimate:Landroid/view/ViewGroup;

    .line 1869
    return-void

    .line 1873
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showHdAudioIndicator(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1551
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mHdAudioIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1549
    :cond_0
    return-void

    .line 1552
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mManageConferenceCallButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    return-void

    .line 1563
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showVolteIcon(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1032
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    if-eqz p1, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
