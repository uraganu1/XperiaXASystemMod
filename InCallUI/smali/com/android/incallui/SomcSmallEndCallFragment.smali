.class public Lcom/android/incallui/SomcSmallEndCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcSmallEndCallFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;
.implements Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/SomcSmallEndCallPresenter;",
        "Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;",
        ">;",
        "Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;",
        "Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;"
    }
.end annotation


# instance fields
.field protected mEndCallView:Lcom/android/incallui/SomcEndCallView;

.field private mSlidingTab:Lcom/android/incallui/SomcSmallEndCallSlidingTab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mSlidingTab:Lcom/android/incallui/SomcSmallEndCallSlidingTab;

    .line 17
    return-void
.end method


# virtual methods
.method public changeSlidingTabToEnded(Z)V
    .locals 1
    .param p1, "ended"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mSlidingTab:Lcom/android/incallui/SomcSmallEndCallSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSmallEndCallSlidingTab;->changeSlidingTabToEnded(Z)V

    .line 66
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallFragment;->createPresenter()Lcom/android/incallui/SomcSmallEndCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/SomcSmallEndCallPresenter;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/incallui/SomcSmallEndCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/SomcSmallEndCallPresenter;-><init>()V

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallFragment;->getUi()Lcom/android/incallui/SomcSmallEndCallPresenter$EndCallUi;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x7f04004b

    .line 43
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcEndCallView;

    iput-object v1, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mEndCallView:Lcom/android/incallui/SomcEndCallView;

    .line 46
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mEndCallView:Lcom/android/incallui/SomcEndCallView;

    invoke-virtual {v1, p0}, Lcom/android/incallui/SomcEndCallView;->setOnEndCallRspListener(Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;)V

    .line 47
    iget-object v1, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mEndCallView:Lcom/android/incallui/SomcEndCallView;

    const v2, 0x7f0f00d6

    invoke-virtual {v1, v2}, Lcom/android/incallui/SomcEndCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SomcSmallEndCallSlidingTab;

    iput-object v1, p0, Lcom/android/incallui/SomcSmallEndCallFragment;->mSlidingTab:Lcom/android/incallui/SomcSmallEndCallSlidingTab;

    .line 48
    return-object v0
.end method

.method public onEndCall()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcSmallEndCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmallEndCallPresenter;->endCall()V

    .line 52
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcSmallEndCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
