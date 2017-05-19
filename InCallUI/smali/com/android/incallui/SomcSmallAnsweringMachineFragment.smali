.class public Lcom/android/incallui/SomcSmallAnsweringMachineFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcSmallAnsweringMachineFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;
.implements Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/SomcAnsweringMachinePresenter;",
        "Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;",
        ">;",
        "Lcom/android/incallui/SomcIncomingCallAnswerListener;",
        "Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;"
    }
.end annotation


# instance fields
.field private mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private final mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment$1;-><init>(Lcom/android/incallui/SomcSmallAnsweringMachineFragment;)V

    .line 29
    iput-object v0, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->createPresenter()Lcom/android/incallui/SomcAnsweringMachinePresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/SomcAnsweringMachinePresenter;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-direct {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;-><init>()V

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getUi()Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    move-result-object v0

    return-object v0
.end method

.method public hideAmAnimation()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onAnswer(I)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f040048

    .line 56
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSlidingTab;

    iput-object v1, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 59
    iget-object v1, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    iget-object v2, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 61
    return-object v0
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onDecline(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 67
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 65
    return-void
.end method

.method public setAmPlayingElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public setAmPlayingTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    .line 102
    return-void
.end method

.method public setAmRecordingElapsedTime(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "recordingElapsed"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAmPlayingAnimation()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public showAmRecordingAnimation()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public showErrorDialog(I)V
    .locals 0
    .param p1, "subParameter"    # I

    .prologue
    .line 108
    return-void
.end method

.method public startAmPlayingAnimation(F)V
    .locals 0
    .param p1, "resumeTime"    # F

    .prologue
    .line 105
    return-void
.end method

.method public startAmRecordingAnimation(F)V
    .locals 0
    .param p1, "resumeTime"    # F

    .prologue
    .line 99
    return-void
.end method
