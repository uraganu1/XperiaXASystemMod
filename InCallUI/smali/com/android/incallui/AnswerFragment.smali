.class public Lcom/android/incallui/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/GlowPadWrapper$AnswerListener;
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;,
        Lcom/android/incallui/AnswerFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/GlowPadWrapper$AnswerListener;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;"
    }
.end annotation


# instance fields
.field private mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private mEndCurrentNameOrNumber:Ljava/lang/String;

.field private mEndHeldNameOrNumber:Ljava/lang/String;

.field private mIsShowWaitingCallPopup:Z

.field private mMsgMaxLength:I

.field private mResponseOptBtn:Landroid/widget/TextView;

.field private final mSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

.field private final mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

.field private mWaitingCallPopup:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/AnswerFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/AnswerFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mMsgMaxLength:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 99
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/android/incallui/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerFragment$1;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 108
    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/AnswerFragment;->mMsgMaxLength:I

    .line 129
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    .line 134
    return-void
.end method

.method private dismissCannedResponsePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 432
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 429
    :cond_0
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 442
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 439
    :cond_0
    return-void
.end method

.method private generateRejectWithMsgItem(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v1, "rejectMsgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;>;"
    new-instance v2, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 662
    const v4, 0x7f0b0278

    .line 661
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6, v5}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v2, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 664
    const v4, 0x7f0b0277

    .line 663
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 664
    const v4, 0x7f020088

    .line 663
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 667
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    new-instance v3, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_1
    return-object v1
.end method

.method private getRejectWithAnsweringMachineItem()Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 676
    new-instance v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 677
    const v2, 0x7f0b0293

    .line 676
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    const v2, 0x7f020086

    .line 679
    const/4 v5, 0x1

    move v4, v3

    .line 676
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;-><init>(Ljava/lang/String;IZZI)V

    return-object v0
.end method

.method private hasResponseOption(II)Z
    .locals 1
    .param p1, "options"    # I
    .param p2, "option"    # I

    .prologue
    .line 683
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 639
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->generateRejectWithMsgItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 640
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->notifyDataSetChanged()V

    .line 637
    :cond_0
    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;I)V
    .locals 2
    .param p2, "responseOptions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/AnswerFragment;->hasResponseOption(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->getRejectWithAnsweringMachineItem()Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcRejectWithMsgAdapter;->notifyDataSetChanged()V

    .line 646
    :cond_2
    return-void

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->generateRejectWithMsgItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAnswerPad;->dismissVideoRequestPopup()V

    .line 457
    :cond_3
    return-void
.end method

.method public dismissWaitingCallPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 453
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    .line 450
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAnswerPad;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 898
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingDialogs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 476
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingCallPopupShowing()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 2
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnswer videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 705
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 149
    const v1, 0x7f04003f

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "parent":Landroid/view/View;
    new-instance v1, Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/incallui/SomcAnswerPad;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    .line 153
    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/android/incallui/AnswerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$2;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    if-eqz p3, :cond_0

    .line 164
    const-string/jumbo v1, "answer_call_popup_visible"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 163
    iput-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mIsShowWaitingCallPopup:Z

    .line 167
    :cond_0
    return-object v0
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    .line 711
    return-void
.end method

.method public onDeclineUpgradeRequest(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 716
    return-void
.end method

.method public onDeflect(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDeflect(Landroid/content/Context;)V

    .line 726
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string/jumbo v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    .line 174
    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    .line 175
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 876
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mIsShowWaitingCallPopup:Z

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->checkAndShowWaitingCallDialog()Z

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mIsShowWaitingCallPopup:Z

    .line 874
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 884
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 886
    const-string/jumbo v0, "answer_call_popup_visible"

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    return-void
.end method

.method public onShowAnswerUi(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Show answer UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    if-nez p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 183
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragment;->showIncomingCallView(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAnswerPad;->dismissVideoRequestPopup()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_1
    const/16 v0, 0x8

    .line 189
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    return-void

    .line 190
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    .line 721
    return-void
.end method

.method public setContactNameOrNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "nameOrNumber"    # Ljava/lang/String;
    .param p2, "isActive"    # Z

    .prologue
    .line 763
    invoke-static {p1}, Lcom/android/incallui/SomcInCallUiUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 764
    if-eqz p2, :cond_0

    .line 765
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mEndCurrentNameOrNumber:Ljava/lang/String;

    .line 762
    :goto_0
    return-void

    .line 767
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mEndHeldNameOrNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public setResponseOptBtnVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    return-void
.end method

.method public showCustomMessageDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 515
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    .line 517
    const/4 v4, 0x0

    .line 515
    invoke-virtual {v3, v6, v4}, Lcom/android/incallui/TelecomAdapter;->somcGetIntCommand(ILjava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/incallui/AnswerFragment;->mMsgMaxLength:I

    .line 519
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 521
    .local v1, "et":Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 523
    new-instance v4, Lcom/android/incallui/AnswerFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/android/incallui/AnswerFragment$4;-><init>(Lcom/android/incallui/AnswerFragment;Landroid/widget/EditText;)V

    .line 522
    const v5, 0x7f0b0354

    .line 521
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 534
    new-instance v4, Lcom/android/incallui/AnswerFragment$5;

    invoke-direct {v4, p0}, Lcom/android/incallui/AnswerFragment$5;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 533
    const v5, 0x7f0b0353

    .line 521
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 541
    const v4, 0x7f0b0277

    .line 521
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 545
    new-instance v3, Lcom/android/incallui/AnswerFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$6;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 626
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 628
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 629
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 632
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 633
    .local v2, "sendButton":Landroid/widget/Button;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 514
    return-void
.end method

.method public showIncomingCallView(Z)V
    .locals 2
    .param p1, "callAnswered"    # Z

    .prologue
    const/16 v1, 0x8

    .line 339
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->setVisibility(I)V

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/incallui/AnswerFragment;->setResponseOptBtnVisibility(I)V

    .line 338
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->setMode(Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;)V

    goto :goto_0
.end method

.method public showIncomingVideoCallView()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-nez v0, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->setMode(Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;)V

    .line 357
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 358
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragment;->setResponseOptBtnVisibility(I)V

    .line 351
    :cond_1
    return-void
.end method

.method public showMessageDialog()V
    .locals 7

    .prologue
    .line 376
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/incallui/SomcRejectWithMsgAdapter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 379
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponses:Ljava/util/List;

    const v5, 0x1090003

    const v6, 0x1020014

    .line 378
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/incallui/SomcRejectWithMsgAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    .line 381
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsResponsesAdapter:Lcom/android/incallui/SomcRejectWithMsgAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    new-instance v2, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 385
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 386
    new-instance v3, Lcom/android/incallui/AnswerFragment$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$3;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 385
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    const v2, 0x7f0b02df

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 397
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 398
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 375
    return-void
.end method

.method public showTargets(I)V
    .locals 1
    .param p1, "targetSet"    # I

    .prologue
    .line 198
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerFragment;->showTargets(II)V

    .line 197
    return-void
.end method

.method public showTargets(II)V
    .locals 0
    .param p1, "targetSet"    # I
    .param p2, "videoState"    # I

    .prologue
    .line 206
    return-void
.end method

.method public showUpgradeRequestDialog(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/SomcAnswerPad;->showUpgradeRequestDialog(Landroid/content/Context;I)V

    .line 865
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->showVideoRequestPopup(Z)V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->showVideoRequestPopup(Z)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Z)V
    .locals 9
    .param p1, "is2ndIncomingCall"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 773
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 774
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f090016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 775
    .local v2, "isShow3rdIncomingCall":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    if-eqz v2, :cond_2

    .line 779
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 781
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    .line 782
    new-array v5, v7, [Ljava/lang/Object;

    .line 783
    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mEndCurrentNameOrNumber:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 782
    const v6, 0x7f0b027b

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "titleText":Ljava/lang/String;
    const v5, 0x7f0b027c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 784
    aput-object v5, v1, v8

    .line 787
    const v5, 0x7f0b027d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 786
    aput-object v5, v1, v7

    .line 799
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 800
    new-instance v5, Lcom/android/incallui/AnswerFragment$7;

    invoke-direct {v5, p0, p1}, Lcom/android/incallui/AnswerFragment$7;-><init>(Lcom/android/incallui/AnswerFragment;Z)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v4    # "titleText":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/android/incallui/AnswerFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/AnswerFragment$9;-><init>(Lcom/android/incallui/AnswerFragment;)V

    .line 841
    const v6, 0x7f0b0283

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 849
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/AnswerFragment$10;

    invoke-direct {v6, p0}, Lcom/android/incallui/AnswerFragment$10;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 856
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    .line 857
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    .line 858
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mWaitingCallPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 772
    return-void

    .line 790
    .restart local v1    # "entries":[Ljava/lang/CharSequence;
    :cond_1
    const v5, 0x7f0b0280

    .line 789
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 792
    .restart local v4    # "titleText":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/Object;

    .line 793
    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mEndCurrentNameOrNumber:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 792
    const v6, 0x7f0b0281

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 791
    aput-object v5, v1, v8

    .line 795
    new-array v5, v7, [Ljava/lang/Object;

    .line 796
    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mEndHeldNameOrNumber:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 795
    const v6, 0x7f0b0282

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 794
    aput-object v5, v1, v7

    goto :goto_0

    .line 828
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v4    # "titleText":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0b027e

    .line 827
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 829
    new-array v5, v7, [Ljava/lang/Object;

    .line 831
    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mEndCurrentNameOrNumber:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 830
    const v6, 0x7f0b027f

    .line 829
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 832
    new-instance v5, Lcom/android/incallui/AnswerFragment$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/AnswerFragment$8;-><init>(Lcom/android/incallui/AnswerFragment;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public showWaitingVideoCallView()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerPad:Lcom/android/incallui/SomcAnswerPad;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcAnswerPad;->setMode(Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;)V

    .line 369
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mResponseOptBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 370
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragment;->setResponseOptBtnVisibility(I)V

    .line 363
    :cond_1
    return-void
.end method
