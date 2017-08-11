.class public Lcom/android/incallui/SomcAnsweringMachineFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcAnsweringMachineFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;
.implements Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;


# annotations
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
.field private mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

.field private mAmIndicator:Landroid/widget/TextView;

.field private mAmPlayingCounter:Landroid/widget/TextView;

.field private mAmRecordingCounter:Landroid/widget/TextView;

.field private mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private mErrorPopup:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method

.method private dismissErrorPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    .line 197
    :cond_0
    return-void
.end method

.method private isErrorDialogShowing()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSlidingTabVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSlidingTab;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->createPresenter()Lcom/android/incallui/SomcAnsweringMachinePresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/SomcAnsweringMachinePresenter;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-direct {v0}, Lcom/android/incallui/SomcAnsweringMachinePresenter;-><init>()V

    return-object v0
.end method

.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->isErrorDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->dismissErrorPopup()V

    .line 204
    :cond_0
    return-void
.end method

.method public getUi()Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getUi()Lcom/android/incallui/SomcAnsweringMachinePresenter$AnsweringMachineUi;

    move-result-object v0

    return-object v0
.end method

.method public hideAmAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0x8

    .line 146
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 152
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcAmAnimationView;->setVisibility(I)V

    .line 153
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcAnsweringMachineFragment;->setSlidingTabVisibility(I)V

    .line 144
    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onAnswer(I)V

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v1, 0x7f040041

    .line 54
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f00c5

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcAmAnimationView;

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    .line 59
    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0f00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSlidingTab;

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 64
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 65
    return-object v0
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnsweringMachinePresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAnsweringMachinePresenter;->onDecline(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    .line 69
    return-void
.end method

.method public setAmPlayingElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAmPlayingTotalTime(I)V
    .locals 1
    .param p1, "totalTime"    # I

    .prologue
    .line 86
    if-lez p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAmAnimationView;->setPlayingAnimationTotalTime(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setAmRecordingElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "recordingElapsed"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAmPlayingAnimation()V
    .locals 6

    .prologue
    const v4, 0x7f0b0295

    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->getSelectedGreetingName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "selectedGreetingName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string/jumbo v2, "selectedGreetingName is Empty"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v2, v5}, Lcom/android/incallui/SomcAmAnimationView;->setVisibility(I)V

    .line 113
    invoke-direct {p0, v5}, Lcom/android/incallui/SomcAnsweringMachineFragment;->setSlidingTabVisibility(I)V

    .line 98
    return-void

    .line 108
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "%s \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 109
    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 108
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public showAmRecordingAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmPlayingCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmIndicator:Landroid/widget/TextView;

    const v1, 0x7f0b0296

    invoke-virtual {p0, v1}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcAmAnimationView;->setVisibility(I)V

    .line 140
    invoke-direct {p0, v2}, Lcom/android/incallui/SomcAnsweringMachineFragment;->setSlidingTabVisibility(I)V

    .line 132
    return-void
.end method

.method public showErrorDialog(I)V
    .locals 5
    .param p1, "subParameter"    # I

    .prologue
    const v4, 0x104000a

    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->dismissErrorPopup()V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "msgId":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 162
    const v0, 0x7f0b0297

    .line 176
    :goto_0
    if-lez v0, :cond_0

    .line 177
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 157
    :cond_1
    return-void

    .line 163
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 164
    const v0, 0x7f0b0298

    goto :goto_0

    .line 166
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 167
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SomcAnsweringMachineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    const v2, 0x7f0b029a

    .line 167
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 169
    const v2, 0x7f0b0299

    .line 167
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mErrorPopup:Landroid/app/AlertDialog;

    goto :goto_0

    .line 173
    :cond_4
    return-void
.end method

.method public startAmPlayingAnimation(F)V
    .locals 1
    .param p1, "resumeTime"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAmAnimationView;->startPlayingAnimation(F)V

    .line 92
    return-void
.end method

.method public startAmRecordingAnimation(F)V
    .locals 1
    .param p1, "resumeTime"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/incallui/SomcAnsweringMachineFragment;->mAmAnimationView:Lcom/android/incallui/SomcAmAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcAmAnimationView;->startRecordingAnimation(F)V

    .line 126
    return-void
.end method
