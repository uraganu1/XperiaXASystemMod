.class public Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;,
        Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ShareActionContext;
    }
.end annotation


# instance fields
.field customMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

.field private final mActivity:Landroid/app/Activity;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;

.field private mMenu:Landroid/view/Menu;

.field private final mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

.field private mSelectionMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "selectionManager"    # Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    .line 61
    return-void
.end method


# virtual methods
.method public getShareActionProvider()Landroid/widget/ShareActionProvider;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;

    invoke-interface {v1, p2}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v0

    .line 103
    .end local v0    # "result":Z
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e026c

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectAllMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->deSelectAll()V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectAllMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->updateSelectionMenu(Z)V

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_1
    return v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->selectAll()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 145
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f110009

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 148
    new-instance v2, Landroid/widget/ShareActionProvider;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ShareActionContext;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ShareActionContext;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 150
    const v2, 0x7f0e0260

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 151
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 153
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->leaveSelectionMode()V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->customMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->disMissPopupMenu()V

    .line 156
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public setActionModeListener(Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mActivity:Landroid/app/Activity;

    .line 75
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 76
    .local v1, "actionMode":Landroid/view/ActionMode;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

    invoke-direct {v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->customMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

    .line 77
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "customView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 79
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->customMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

    .line 80
    const v3, 0x7f0e0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f11000c

    .line 79
    invoke-virtual {v4, v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->addDropDownMenu(Landroid/widget/TextView;I)Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    .line 81
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->updateSelectionMenu(Z)V

    .line 82
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->customMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;

    new-instance v4, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 87
    return-object v1
.end method

.method public updateSelectionMenu(Z)V
    .locals 8
    .param p1, "allMarked"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 122
    .local v0, "count":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f09022c

    .line 122
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionMenu:Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;

    const v4, 0x7f0e026c

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 129
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 130
    if-eqz p1, :cond_1

    .line 131
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 132
    const v3, 0x7f090201

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->toggleAll(Z)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 136
    const v3, 0x7f0901fe

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->toggleAll(Z)V

    goto :goto_0
.end method

.method public visibleMenuItem(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0261

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0e0260

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    :cond_0
    return-void
.end method
