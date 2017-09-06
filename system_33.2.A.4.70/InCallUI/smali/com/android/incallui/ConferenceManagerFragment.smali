.class public Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field private mActionBarElevation:I

.field private mConferenceParticipantList:Landroid/widget/ListView;

.field private mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRecreating:Z

.field private mIsVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    .prologue
    .line 61
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsRecreating:Z

    .line 69
    const-string/jumbo v0, "key_conference_is_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsVisible:Z

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    .line 80
    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 82
    iput v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mActionBarElevation:I

    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 92
    iget-boolean v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsRecreating:Z

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragment;->onVisibilityChanged(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const-string/jumbo v0, "key_conference_is_visible"

    iget-boolean v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5
    .param p1, "isVisible"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mIsVisible:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v2

    .line 107
    .local v2, "isDsdaEnabled":Z
    if-eqz p1, :cond_2

    .line 108
    const v3, 0x7f0b036b

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 109
    iget v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mActionBarElevation:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    .line 110
    if-nez v2, :cond_0

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHideOffset(I)V

    .line 113
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 114
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 113
    invoke-static {v4}, Lcom/android/incallui/SomcInCallUiUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 117
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 118
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 121
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    .line 103
    .end local v1    # "calls":Lcom/android/incallui/CallList;
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    .line 124
    if-nez v2, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHideOffset(I)V

    goto :goto_0
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshCall(Lcom/android/incallui/Call;)V

    .line 147
    return-void
.end method

.method public update(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parentCanSeparate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 139
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 138
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/incallui/ConferenceParticipantListAdapter;-><init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    .line 141
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceParticipantListAdapter:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipants(Ljava/util/List;Z)V

    .line 136
    return-void
.end method
