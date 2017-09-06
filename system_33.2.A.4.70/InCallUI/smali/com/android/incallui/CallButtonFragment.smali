.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAddCallButton:Landroid/widget/TextView;

.field private mAddParticipantButton:Landroid/widget/ImageButton;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private final mButtonHandler:Landroid/os/Handler;

.field private mButtonMaxVisible:I

.field private mButtonVisibilityMap:Landroid/util/SparseIntArray;

.field private mChangeToVideoButton:Landroid/widget/TextView;

.field private mChangeToVoiceButton:Landroid/widget/TextView;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mIsEnabled:Z

.field private mManageVideoCallConferenceButton:Landroid/widget/TextView;

.field private mMergeButton:Landroid/widget/TextView;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mOverflowButton:Landroid/widget/TextView;

.field private mOverflowPopup:Landroid/widget/PopupMenu;

.field private mPauseVideoButton:Landroid/widget/CompoundButton;

.field private mPrevAudioMode:I

.field private mShareVideoButton:Landroid/widget/TextView;

.field private mShowDialpadButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/TextView;

.field private mSwitchCameraButton:Landroid/widget/CompoundButton;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/CallButtonFragment;I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/CallButtonFragment;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->enableSwitchCamera(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    .line 933
    new-instance v0, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "button"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    const/4 v2, 0x0

    .line 507
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v2, p1, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 509
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 506
    return-void
.end method

.method private enableSwitchCamera(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 420
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    if-eqz p1, :cond_0

    .line 423
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 419
    :cond_2
    return-void
.end method

.method private getButtonById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    .line 465
    const-string/jumbo v0, "Invalid button id"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    return-object v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 445
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 447
    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/TextView;

    return-object v0

    .line 449
    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    return-object v0

    .line 451
    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 453
    :pswitch_7
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/TextView;

    return-object v0

    .line 455
    :pswitch_8
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/TextView;

    return-object v0

    .line 457
    :pswitch_9
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    return-object v0

    .line 459
    :pswitch_a
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/TextView;

    return-object v0

    .line 461
    :pswitch_b
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/TextView;

    return-object v0

    .line 463
    :pswitch_c
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareVideoButton:Landroid/widget/TextView;

    return-object v0

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static getLayerDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/LayerDrawable;
    .locals 3
    .param p0, "button"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 774
    if-nez p0, :cond_0

    .line 775
    return-object v1

    .line 777
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 778
    .local v0, "layers":Landroid/graphics/drawable/LayerDrawable;
    if-nez v0, :cond_1

    .line 781
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .end local v0    # "layers":Landroid/graphics/drawable/LayerDrawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 783
    .restart local v0    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    return-object v0
.end method

.method private getPopupMenu()Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    .line 513
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0029

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 514
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/TextView;

    .line 513
    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAudioButtonClicked()V
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 637
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private onManageVideoCallConferenceClicked()V
    .locals 2

    .prologue
    .line 649
    const-string/jumbo v0, "onManageVideoCallConferenceClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->showConferenceCallManager(Z)V

    .line 648
    return-void
.end method

.method private setEnabledOverflowMenus(Landroid/widget/PopupMenu;)V
    .locals 6
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 913
    if-eqz p1, :cond_3

    .line 914
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 915
    .local v3, "overflowUpgradeToVideo":Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 916
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 919
    .local v1, "overflowHold":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 920
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 922
    :cond_1
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 923
    .local v0, "overflowAddCall":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 924
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 926
    :cond_2
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 927
    .local v2, "overflowShareVideo":Landroid/view/MenuItem;
    if-eqz v2, :cond_3

    .line 928
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mShareVideoButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 912
    .end local v0    # "overflowAddCall":Landroid/view/MenuItem;
    .end local v1    # "overflowHold":Landroid/view/MenuItem;
    .end local v2    # "overflowShareVideo":Landroid/view/MenuItem;
    .end local v3    # "overflowUpgradeToVideo":Landroid/view/MenuItem;
    :cond_3
    return-void
.end method

.method private showAudioModePopup()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x8

    const/4 v9, 0x1

    .line 819
    const-string/jumbo v7, "showAudioPopup()..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 822
    const v10, 0x7f0d0029

    .line 821
    invoke-direct {v1, v7, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 823
    .local v1, "contextWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v1, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 824
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    .line 825
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 824
    const/high16 v11, 0x7f100000

    invoke-virtual {v7, v11, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 826
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 827
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 829
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 836
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0f010a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 837
    .local v4, "speakerItem":Landroid/view/MenuItem;
    invoke-direct {p0, v12}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 838
    invoke-direct {p0, v12}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 844
    const v7, 0x7f0f010b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 845
    .local v2, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0f010c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 847
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v5

    .line 848
    .local v5, "usingHeadset":Z
    if-eqz v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 849
    if-eqz v5, :cond_2

    :goto_1
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 850
    invoke-direct {p0, v12}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 851
    const v7, 0x7f0b0292

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 853
    :cond_0
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 854
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 859
    const v7, 0x7f0f010d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 860
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 864
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 869
    iput-boolean v9, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 818
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 848
    goto :goto_0

    :cond_2
    move v8, v9

    .line 849
    goto :goto_1
.end method

.method private updateAudioButtonContentDescription(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 794
    .local v0, "stringId":I
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    const v0, 0x7f0b02ec

    .line 813
    :goto_0
    if-eqz v0, :cond_0

    .line 814
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 789
    :cond_0
    return-void

    .line 797
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 799
    :pswitch_1
    const v0, 0x7f0b02ed

    .line 800
    goto :goto_0

    .line 802
    :pswitch_2
    const v0, 0x7f0b02ef

    .line 803
    goto :goto_0

    .line 805
    :pswitch_3
    const v0, 0x7f0b02ee

    .line 806
    goto :goto_0

    .line 808
    :pswitch_4
    const v0, 0x7f0b02ec

    .line 809
    goto :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateAudioButtons(I)V
    .locals 12
    .param p1, "supportedModes"    # I

    .prologue
    .line 676
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v2

    .line 677
    .local v2, "bluetoothSupported":Z
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v9

    .line 679
    .local v9, "speakerSupported":Z
    const/4 v1, 0x0

    .line 680
    .local v1, "audioButtonEnabled":Z
    const/4 v0, 0x0

    .line 681
    .local v0, "audioButtonChecked":Z
    const/4 v6, 0x0

    .line 683
    .local v6, "showMoreIndicator":Z
    const/4 v4, 0x0

    .line 684
    .local v4, "showBluetoothIcon":Z
    const/4 v7, 0x0

    .line 685
    .local v7, "showSpeakerphoneIcon":Z
    const/4 v5, 0x0

    .line 687
    .local v5, "showHandsetIcon":Z
    const/4 v8, 0x0

    .line 689
    .local v8, "showToggleIndicator":Z
    if-eqz v2, :cond_2

    .line 690
    const-string/jumbo v10, "updateAudioButtons - popup menu mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x1

    .line 693
    const/4 v0, 0x1

    .line 694
    const/4 v6, 0x1

    .line 697
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 698
    const/4 v4, 0x1

    .line 710
    :goto_0
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 740
    .end local v0    # "audioButtonChecked":Z
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "audioButtonEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "audioButtonChecked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showMoreIndicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showBluetoothIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showSpeakerphoneIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showHandsetIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_4

    iget-boolean v10, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 749
    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_5

    iget-boolean v10, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 750
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 752
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-static {v10}, Lcom/android/incallui/CallButtonFragment;->getLayerDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    .line 753
    .local v3, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\'layers\' drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    const/4 v8, 0x1

    .line 756
    const v10, 0x7f0f0105

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 757
    if-eqz v8, :cond_6

    const/16 v10, 0xff

    .line 756
    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 759
    const v10, 0x7f0f0106

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 760
    if-eqz v6, :cond_7

    const/16 v10, 0xff

    .line 759
    :goto_5
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 762
    const v10, 0x7f0f0107

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 763
    if-eqz v4, :cond_8

    const/16 v10, 0xff

    .line 762
    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 765
    const v10, 0x7f0f0108

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 766
    if-eqz v5, :cond_9

    const/16 v10, 0xff

    .line 765
    :goto_7
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 768
    const v10, 0x7f0f0109

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 769
    if-eqz v7, :cond_a

    const/16 v10, 0xff

    .line 768
    :goto_8
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 675
    return-void

    .line 699
    .end local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .restart local v0    # "audioButtonChecked":Z
    :cond_0
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 700
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 702
    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 711
    :cond_2
    if-eqz v9, :cond_3

    .line 712
    const-string/jumbo v10, "updateAudioButtons - speaker toggle mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x1

    .line 718
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v0

    .line 719
    .local v0, "audioButtonChecked":Z
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 722
    const/4 v8, 0x1

    .line 723
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 725
    .local v0, "audioButtonChecked":Z
    :cond_3
    const-string/jumbo v10, "updateAudioButtons - disabled..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    const/4 v1, 0x0

    .line 730
    const/4 v0, 0x0

    .line 731
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 734
    const/4 v8, 0x1

    .line 735
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 748
    .end local v0    # "audioButtonChecked":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 749
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 757
    .restart local v3    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 760
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 763
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 766
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 769
    :cond_a
    const/4 v10, 0x0

    goto :goto_8
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 883
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)V

    .line 881
    :cond_0
    return-void
.end method

.method public enableAddParticipant(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 495
    return-void

    .line 496
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public enableButton(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 408
    const v1, 0x7f0f001f

    if-ne p1, v1, :cond_0

    .line 409
    invoke-direct {p0, p2}, Lcom/android/incallui/CallButtonFragment;->enableSwitchCamera(Z)V

    .line 410
    return-void

    .line 413
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "button":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 130
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0

    .line 893
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 203
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick(View "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    packed-switch v0, :pswitch_data_0

    .line 262
    const-string/jumbo v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    return-void

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    .line 268
    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 266
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 201
    return-void

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClickedWithoutMute()V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 217
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    .line 218
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 225
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    .line 228
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    .line 231
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addParticipantClicked()V

    goto :goto_0

    .line 234
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->changeToVideoClicked()V

    goto :goto_0

    .line 237
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 238
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    .line 237
    invoke-virtual {v1, v4}, Lcom/android/incallui/CallButtonPresenter;->switchCameraClicked(Z)V

    .line 239
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->enableSwitchCamera(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mButtonHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 241
    const-wide/16 v4, 0xdac

    .line 240
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 244
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 245
    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 244
    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->pauseVideoClicked(Z)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 245
    goto :goto_4

    .line 248
    :pswitch_b
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 253
    :pswitch_c
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onManageVideoCallConferenceClicked()V

    goto/16 :goto_0

    .line 256
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->changeToVoiceClicked()V

    goto/16 :goto_0

    .line 259
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->shareVideoClicked()V

    goto/16 :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x7f0f001b
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonMaxVisible:I

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    .line 150
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    .line 152
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    .line 154
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    .line 156
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    .line 162
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f0f0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    .line 168
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    .line 170
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/TextView;

    .line 172
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f0f0027

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/TextView;

    .line 175
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShareVideoButton:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShareVideoButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 627
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x5

    .line 598
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string/jumbo v2, " (MenuItem = \'"

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string/jumbo v2, "\')"

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 619
    const/4 v1, 0x1

    return v1

    .line 600
    :pswitch_0
    const/16 v0, 0x8

    .line 601
    goto :goto_0

    .line 606
    :pswitch_1
    const/4 v0, 0x5

    .line 607
    goto :goto_0

    .line 609
    :pswitch_2
    const/4 v0, 0x2

    .line 610
    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f010a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 192
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 667
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 662
    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 576
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 578
    iget v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtonContentDescription(I)V

    .line 580
    iput p1, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    .line 574
    :cond_0
    return-void
.end method

.method public setCameraSwitched(Z)V
    .locals 1
    .param p1, "isBackFacingCamera"    # Z

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 481
    return-void
.end method

.method public setChangeToVideoButtonAppearance(Z)V
    .locals 3
    .param p1, "showRcsVideoBtn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 898
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->useRcsJoynBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    .line 900
    const v1, 0x7f020111

    .line 899
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 897
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    .line 903
    const v1, 0x7f020006

    .line 902
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    .line 381
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageVideoCallConferenceButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareVideoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddParticipantButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    return-void

    .line 397
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHold(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 474
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 475
    if-eqz p1, :cond_1

    const v0, 0x7f0b033a

    .line 474
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    return-void

    .line 476
    :cond_1
    const v0, 0x7f0b0339

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 500
    :cond_0
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 587
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 585
    return-void
.end method

.method public setVideoPaused(Z)V
    .locals 3
    .param p1, "isPaused"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    .line 489
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 490
    const v0, 0x7f0b0290

    .line 489
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    :cond_0
    return-void

    .line 491
    :cond_1
    const v0, 0x7f0b0291

    goto :goto_0
.end method

.method public showButton(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateButtonStates()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 526
    .local v4, "prevVisibleId":I
    const/4 v2, 0x0

    .line 527
    .local v2, "menu":Landroid/widget/PopupMenu;
    const/4 v6, 0x0

    .line 528
    .local v6, "visibleCount":I
    const/4 v1, 0x0

    .end local v2    # "menu":Landroid/widget/PopupMenu;
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    .local v1, "i":I
    :goto_0
    const/16 v9, 0xd

    if-ge v1, v9, :cond_5

    .line 529
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mButtonVisibilityMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 530
    .local v5, "visibility":I
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "button":Landroid/view/View;
    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    .line 532
    add-int/lit8 v6, v6, 0x1

    .line 533
    iget v9, p0, Lcom/android/incallui/CallButtonFragment;->mButtonMaxVisible:I

    if-gt v6, v9, :cond_1

    .line 534
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 535
    move-object v3, v0

    .line 536
    .local v3, "prevVisibleButton":Landroid/view/View;
    move v4, v1

    .line 528
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    if-nez v2, :cond_2

    .line 539
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getPopupMenu()Landroid/widget/PopupMenu;

    move-result-object v2

    .line 544
    :cond_2
    if-eqz v3, :cond_3

    .line 545
    invoke-direct {p0, v4, v3, v2}, Lcom/android/incallui/CallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, "prevVisibleButton":Landroid/view/View;
    const/4 v4, -0x1

    .line 549
    .end local v3    # "prevVisibleButton":Landroid/view/View;
    :cond_3
    invoke-direct {p0, v1, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addToOverflowMenu(ILandroid/view/View;Landroid/widget/PopupMenu;)V

    goto :goto_1

    .line 551
    :cond_4
    const/4 v9, 0x2

    if-ne v5, v9, :cond_0

    .line 552
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 556
    .end local v0    # "button":Landroid/view/View;
    .end local v5    # "visibility":I
    :cond_5
    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    if-eqz v2, :cond_6

    .line 558
    iput-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    .line 559
    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    new-instance v8, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 569
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->setEnabledOverflowMenus(Landroid/widget/PopupMenu;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 523
    return-void

    :cond_7
    move v7, v8

    .line 556
    goto :goto_2
.end method
