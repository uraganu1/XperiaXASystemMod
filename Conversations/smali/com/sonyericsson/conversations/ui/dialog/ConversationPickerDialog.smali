.class public Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.super Landroid/app/DialogFragment;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;,
        Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;
    }
.end annotation


# instance fields
.field private final mButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContactsView:Landroid/support/v7/widget/RecyclerView;

.field private mConversationAdapter:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mHasSentResult:Z

.field private mInnerLayout:Landroid/view/ViewGroup;

.field private mListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

.field private mPopulator:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mHasSentResult:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mPopulator:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mHasSentResult:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;)Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mPopulator:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;I)V
    .locals 0
    .param p1, "numberOfItems"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->updateConversationList(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$1;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    return-void
.end method

.method private switchViews(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "from"    # Landroid/view/View;
    .param p2, "to"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 123
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 121
    return-void
.end method

.method private updateConversationList(I)V
    .locals 6
    .param p1, "numberOfItems"    # I

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mEmptyView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 107
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x103013f

    .line 107
    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v0, "ctw":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    const v4, 0x7f030007

    invoke-virtual {v1, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mEmptyView:Landroid/view/View;

    .line 113
    .end local v0    # "ctw":Landroid/content/Context;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mEmptyView:Landroid/view/View;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 114
    .local v2, "isShowingEmpty":Z
    :goto_0
    if-lez p1, :cond_3

    if-eqz v2, :cond_3

    .line 115
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mEmptyView:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mContactsView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->switchViews(Landroid/view/View;Landroid/view/View;)V

    .line 105
    :cond_1
    :goto_1
    return-void

    .line 113
    .end local v2    # "isShowingEmpty":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isShowingEmpty":Z
    goto :goto_0

    .line 116
    :cond_3
    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    if-nez v2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mContactsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mEmptyView:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->switchViews(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mHasSentResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;->onCancel()V

    .line 128
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x103013f

    .line 79
    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 81
    .local v0, "ctw":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 83
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    .line 87
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0d001a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mContactsView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    new-instance v3, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;-><init>(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mConversationAdapter:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    .line 89
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "layoutMgr":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mContactsView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mContactsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mConversationAdapter:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mConversationAdapter:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;->getItemCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->updateConversationList(I)V

    .line 95
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    const v4, 0x7f0b02af

    .line 95
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mInnerLayout:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    const v5, 0x7f0b00d4

    .line 95
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x7f0b015a

    .line 95
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 139
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mConversationAdapter:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationAdapter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->removeContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mPopulator:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mPopulator:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorTask;->cancel(Z)Z

    .line 137
    :cond_0
    return-void
.end method

.method public setOnResultListener(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->mListener:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;

    .line 150
    return-void
.end method
