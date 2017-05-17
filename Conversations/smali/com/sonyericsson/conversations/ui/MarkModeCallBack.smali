.class public Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
.super Ljava/lang/Object;
.source "MarkModeCallBack.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;
    }
.end annotation


# instance fields
.field public mActionMenu:Landroid/view/Menu;

.field private mContext:Landroid/content/Context;

.field public mCustomView:Landroid/view/View;

.field private mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field public mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private initSelectionMenu()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/sonyericsson/conversations/model/CustomMenu;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/model/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "customMenu":Lcom/sonyericsson/conversations/model/CustomMenu;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    const v2, 0x7f120004

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/CustomMenu;->addDropDownMenu(Landroid/widget/TextView;I)Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 138
    new-instance v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$1;-><init>(Lcom/sonyericsson/conversations/ui/MarkModeCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-nez v0, :cond_0

    .line 87
    return v1

    .line 89
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onMarkAll()V

    .line 105
    :goto_0
    return v1

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onUnMarkAll()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onDeleteMarkedItems()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0153
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 70
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 71
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->initSelectionMenu()V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->dismissPopupMenu()V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onNotifyActionModeDestroy()V

    .line 114
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 116
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 117
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 108
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;->onUpdateActionMenu()V

    .line 82
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mMarkListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 120
    return-void
.end method

.method public setTitleOnSelectedView(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method
