.class public Lcom/android/incallui/SomcSmallAnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcSmallAnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcSmallAnswerFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private final mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/incallui/SomcSmallAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SomcSmallAnswerFragment;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/android/incallui/SomcSmallAnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcSmallAnswerFragment$1;-><init>(Lcom/android/incallui/SomcSmallAnswerFragment;)V

    .line 30
    iput-object v0, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 19
    return-void
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/List;)V
    .locals 0
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
    .line 122
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;I)V
    .locals 0
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
    .line 147
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSmallAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissWaitingCallPopup()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public isWaitingCallPopupShowing()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 3
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/android/incallui/SomcSmallAnswerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSlidingTab;

    iput-object v1, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 67
    iget-object v1, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    iget-object v2, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 69
    return-object v0
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->onDecline(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/incallui/SomcSmallAnswerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 57
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 54
    return-void
.end method

.method public onShowAnswerUi(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setContactNameOrNumber(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "nameOrNumber"    # Ljava/lang/String;
    .param p2, "isActive"    # Z

    .prologue
    .line 106
    return-void
.end method

.method public setResponseOptBtnVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 126
    return-void
.end method

.method public showIncomingCallView(Z)V
    .locals 2
    .param p1, "answered"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcSmallAnswerFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 89
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIncomingVideoCallView()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public showMessageDialog()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public showTargets(I)V
    .locals 0
    .param p1, "targetSet"    # I

    .prologue
    .line 114
    return-void
.end method

.method public showUpgradeRequestDialog(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 143
    return-void
.end method

.method public showWaitingCallDialog(Z)V
    .locals 0
    .param p1, "is2ndIncomingCall"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public showWaitingVideoCallView()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
