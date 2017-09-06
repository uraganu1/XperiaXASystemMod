.class public Lcom/android/incallui/SomcSmallCallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcSmallCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
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


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateVideoCallIcon:Landroid/widget/ImageView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mHdAudioIcon:Landroid/widget/ImageView;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoAlphaAnsweringMachine:F

.field private mPhotoAlphaDefault:F

.field private mPhotoAlphaEndCall:F

.field private mPhotoAlphaHeldCall:F

.field private mPhotoScaleDefault:F

.field private mPhotoScaleInactive:F

.field private mPrimaryCallSubIndicator:Landroid/widget/ImageView;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private mVolteIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/incallui/SomcSmallCallCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method

.method private animatePhotoAreaSize(FF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 554
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 551
    :cond_2
    return-void
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;IZZZ)Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
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
    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 237
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 239
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    .line 240
    .local v2, "hasSuggestedLabel":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p7, :cond_3

    :cond_0
    const/4 v3, 0x0

    .line 241
    .local v3, "isAccount":Z
    :goto_1
    const/4 v4, 0x0

    .line 243
    .local v4, "isAutoDismissing":Z
    packed-switch p1, :pswitch_data_0

    .line 320
    :pswitch_0
    sget-object v5, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    :pswitch_1
    new-instance v5, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;

    invoke-direct {v5, v0, v4}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;-><init>(Ljava/lang/CharSequence;Z)V

    return-object v5

    .line 239
    .end local v2    # "hasSuggestedLabel":Z
    .end local v3    # "isAccount":Z
    .end local v4    # "isAutoDismissing":Z
    .restart local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hasSuggestedLabel":Z
    goto :goto_0

    .line 240
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isAccount":Z
    goto :goto_1

    .line 251
    .restart local v4    # "isAutoDismissing":Z
    :pswitch_2
    const/4 v5, 0x5

    .line 250
    if-ne p3, v5, :cond_6

    .line 252
    const v5, 0x7f0b0308

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 269
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_4
    :goto_3
    if-nez v3, :cond_5

    if-nez p8, :cond_5

    if-eqz p9, :cond_1

    :cond_5
    if-eqz v2, :cond_1

    .line 270
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

    .line 271
    move-object v0, p5

    .restart local v0    # "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_2

    .line 255
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_6
    const/4 v5, 0x2

    .line 254
    if-ne p3, v5, :cond_7

    .line 256
    const v5, 0x7f0b0307

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    goto :goto_3

    .line 259
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_7
    const/4 v5, 0x1

    .line 258
    if-ne p3, v5, :cond_8

    .line 260
    invoke-static {p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 263
    :cond_8
    const/4 v5, 0x3

    .line 262
    if-ne p3, v5, :cond_a

    .line 264
    const v5, 0x7f0b028c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 261
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_9
    const v5, 0x7f0b0285

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 265
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    const v5, 0x7f0b0305

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto :goto_3

    .line 270
    .end local v0    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_b
    const-string/jumbo v5, ""

    goto :goto_4

    .line 275
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_3
    const v5, 0x7f0b0300

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 279
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_4
    if-eqz v2, :cond_c

    if-eqz p8, :cond_d

    .line 282
    :cond_c
    const v5, 0x7f0b02fb

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 280
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

    .line 286
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_5
    const v5, 0x7f0b02fc

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 290
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_6
    if-eqz p8, :cond_e

    if-eqz v2, :cond_e

    .line 291
    move-object v0, p5

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 292
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_e
    if-eqz v3, :cond_f

    .line 293
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const v6, 0x7f0b034e

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 294
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_f
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 295
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v5

    .line 294
    if-eqz v5, :cond_11

    .line 296
    :cond_10
    const v5, 0x7f0b0315

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 298
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :cond_11
    const v5, 0x7f0b02fe

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 308
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_7
    const v5, 0x7f0b0301

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 311
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 312
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    const v5, 0x7f0b02ff

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 317
    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    :pswitch_9
    const v5, 0x7f0b02fd

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStateLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 243
    nop

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

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isVisible"    # Z

    .prologue
    .line 435
    if-nez p2, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p2, :cond_1

    .line 441
    return-void

    .line 443
    :cond_1
    iput-object p2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 447
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    if-eqz p3, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 434
    :cond_2
    :goto_0
    return-void

    .line 455
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    if-eqz p3, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private showInternetCallLabel(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 472
    const v2, 0x7f0b0332

    .line 471
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected executeCallStateAnimation(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 510
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaAnsweringMachine:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallCallCardFragment;->animatePhotoAreaSize(FF)V

    .line 512
    return-void

    .line 515
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 509
    :goto_0
    :pswitch_0
    return-void

    .line 517
    :pswitch_1
    iget v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleDefault:F

    iget v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaHeldCall:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallCallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 524
    :pswitch_2
    iget v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaDefault:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallCallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 528
    :pswitch_3
    iget v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleDefault:F

    iget v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaDefault:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallCallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 534
    :pswitch_4
    iget v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleInactive:F

    iget v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaEndCall:F

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SomcSmallCallCardFragment;->animatePhotoAreaSize(FF)V

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
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
    .line 74
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public isManageConferenceVisible()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 88
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 89
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x7f040049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    const v2, 0x7f0f00aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    .line 97
    const v2, 0x7f0f00ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    .line 98
    const v2, 0x7f0f00ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mHdAudioIcon:Landroid/widget/ImageView;

    .line 99
    const v2, 0x7f0f00b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    .line 100
    const v2, 0x7f0f002e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 101
    const v2, 0x7f0f00b3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    .line 102
    const v2, 0x7f0f00ac

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0f00ad

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0f006f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f0f00b0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0f00b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0f00b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    .local v1, "val":Landroid/util/TypedValue;
    const v2, 0x7f0800d8

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 112
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaDefault:F

    .line 113
    const v2, 0x7f0800d9

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaHeldCall:F

    .line 115
    const v2, 0x7f0800da

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 116
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaEndCall:F

    .line 117
    const v2, 0x7f0800db

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 118
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoAlphaAnsweringMachine:F

    .line 120
    const v2, 0x7f0800dc

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 121
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleDefault:F

    .line 122
    const v2, 0x7f0800dd

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 123
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhotoScaleInactive:F

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/incallui/SomcSmallCallCardFragment;->setVisible(Z)V

    .line 93
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SomcSmallCallCardFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public sendAccessibilityAnnouncement()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public setCallCardVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 588
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 13
    .param p1, "state"    # I
    .param p2, "videoState"    # I
    .param p3, "sessionModificationState"    # I
    .param p4, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "preciseCause"    # I
    .param p6, "connectionLabel"    # Ljava/lang/String;
    .param p7, "connectionIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "gatewayNumber"    # Ljava/lang/String;
    .param p9, "isWifi"    # Z
    .param p10, "isConference"    # Z

    .prologue
    .line 163
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    .line 168
    .local v8, "isGatewayCall":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/SomcInCallUiUtils;->isHoldSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 170
    const/4 p1, 0x3

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p5

    move/from16 v9, p9

    move/from16 v10, p10

    .line 173
    invoke-direct/range {v1 .. v10}, Lcom/android/incallui/SomcSmallCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;IZZZ)Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;

    move-result-object v12

    .line 177
    .local v12, "callStateLabel":Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
    sget-object v1, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCallState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoDismiss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->isAutoDismissing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v12}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    return-void

    .line 163
    .end local v8    # "isGatewayCall":Z
    .end local v12    # "callStateLabel":Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "isGatewayCall":Z
    goto/16 :goto_0

    .line 189
    .restart local v12    # "callStateLabel":Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;
    :cond_2
    invoke-virtual {v12}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/android/incallui/SomcSmallCallCardFragment$CallStateLabel;->getCallStateLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 192
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_1
    if-eqz p7, :cond_6

    .line 205
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    :goto_2
    invoke-static {p2}, Lcom/android/incallui/CallUtils;->isVideoCall(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 213
    const/4 v1, 0x1

    .line 212
    move/from16 v0, p3

    if-ne v0, v1, :cond_7

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSmallCallCardFragment;->executeCallStateAnimation(I)V

    .line 161
    return-void

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 196
    .local v11, "callStateAnimation":Landroid/view/animation/Animation;
    if-eqz v11, :cond_5

    .line 197
    invoke-virtual {v11}, Landroid/view/animation/Animation;->cancel()V

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 201
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 208
    .end local v11    # "callStateAnimation":Landroid/view/animation/Animation;
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mCallStateVideoCallIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setCallbackNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callbackNumber"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z

    .prologue
    .line 596
    return-void
.end method

.method public setEndCallButtonClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 584
    return-void
.end method

.method public setEndCallButtonEnabled(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 580
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 0
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 608
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
    .line 328
    sget-object v3, Lcom/android/incallui/SomcSmallCallCardFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Setting primary call"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 329
    if-eqz v3, :cond_0

    .line 331
    if-nez p1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 332
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 338
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoicemailString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "voicemailString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    move-object p2, v2

    .line 345
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "voicemailString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SomcSmallCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcSmallCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p4}, Lcom/android/incallui/SomcSmallCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p6}, Lcom/android/incallui/SomcSmallCallCardFragment;->showInternetCallLabel(Z)V

    .line 354
    iget-object v3, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p5, p7}, Lcom/android/incallui/SomcSmallCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 356
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 357
    :goto_0
    invoke-virtual {p0, p5, v0, p1, p7}, Lcom/android/incallui/SomcSmallCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 327
    return-void

    .line 356
    :cond_1
    move-object v0, p2

    .local v0, "nameForImage":Ljava/lang/String;
    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v3, -0x1

    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 366
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "callTimeElapsed":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/incallui/InCallDateUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "durationDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    .end local v1    # "durationDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    .end local v0    # "callTimeElapsed":Ljava/lang/String;
    :goto_1
    return-void

    .line 372
    .restart local v0    # "callTimeElapsed":Ljava/lang/String;
    .restart local v1    # "durationDescription":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 375
    .end local v0    # "callTimeElapsed":Ljava/lang/String;
    .end local v1    # "durationDescription":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public setPrimaryCallSubIndicator(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 618
    const v0, 0x7f020038

    .line 617
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 620
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    return-void

    .line 619
    :cond_0
    const v0, 0x7f020037

    goto :goto_0
.end method

.method public setPrimaryCallSubIndicatorVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryCallSubIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "isVisible"    # Z

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p4}, Lcom/android/incallui/SomcSmallCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 398
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 399
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 398
    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "nameDirection":I
    if-eqz p2, :cond_2

    .line 405
    const/4 v0, 0x3

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 592
    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
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
    .line 568
    return-void
.end method

.method public setSecondaryCallSubIndicator(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 630
    return-void
.end method

.method public setSecondaryCallSubIndicatorVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 634
    return-void
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 572
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "fgAreaUsed"    # Z
    .param p2, "bgAreaUsed"    # Z
    .param p3, "viewToAnimate"    # Landroid/view/ViewGroup;

    .prologue
    .line 612
    return-void
.end method

.method public showHdAudioIndicator(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 488
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mHdAudioIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    :cond_0
    return-void

    .line 489
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 576
    return-void
.end method

.method public showVolteIcon(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    if-eqz p1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SomcSmallCallCardFragment;->mVolteIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
