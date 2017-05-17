.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.super Landroid/app/Fragment;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$DeleteMarkedItemsTask;,
        Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sonymobile/template/sms/TextTemplate;",
        ">;>;",
        "Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment$TextTemplateChangedListener;"
    }
.end annotation


# instance fields
.field private mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

.field private mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

.field private mClickedPosition:I

.field private mClosedByUser:Z

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mTemplateList:Landroid/widget/ListView;

.field private mTemplateListEmptyText:Landroid/widget/TextView;

.field mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;ILcom/sonymobile/template/sms/TextTemplate;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "originalTemplate"    # Lcom/sonymobile/template/sms/TextTemplate;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToMultiSelectMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToViewMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    .line 342
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 91
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->initActionBar()V

    .line 146
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 163
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 164
    const/16 v1, 0xf

    .line 166
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 161
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method

.method private onWriteNewClick()V
    .locals 4

    .prologue
    const/16 v2, 0x1e

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    new-array v1, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 201
    const v2, 0x7f0b019f

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 198
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V

    goto :goto_0
.end method

.method private refreshEmptyText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private declared-synchronized showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "originalTemplate"    # Lcom/sonymobile/template/sms/TextTemplate;

    .prologue
    monitor-enter p0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 289
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v4, "text-template-dialog"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 290
    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;-><init>()V

    .line 291
    .local v1, "dialogFragment":Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "mode"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string/jumbo v4, "textTemplate"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 296
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v4, "text-template-dialog"

    invoke-virtual {v3, v1, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 297
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialogFragment":Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateDialogFragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    monitor-exit p0

    .line 286
    return-void

    .end local v2    # "fm":Landroid/app/FragmentManager;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private switchToMultiSelectMode(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 213
    if-le p1, v2, :cond_1

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 217
    :cond_1
    return-void

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->switchCursorAdapterMode(I)V

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 226
    if-eq p1, v2, :cond_3

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 230
    :cond_3
    new-instance v0, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mCallback:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;->onStartDeleteSeveralTextTemplates()V

    .line 208
    :cond_4
    return-void
.end method

.method private switchToViewMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    .line 242
    const/4 v1, 0x1

    .line 241
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->switchCursorAdapterMode(I)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshEmptyText()V

    .line 247
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 249
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 240
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->setHasOptionsMenu(Z)V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->init()V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string/jumbo v0, "clicked_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 181
    const v0, 0x7f120006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateList:Landroid/widget/ListView;

    .line 107
    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplateListEmptyText:Landroid/widget/TextView;

    .line 108
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->cancel(Z)Z

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClosedByUser:Z

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 141
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 143
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p2, Ljava/util/List;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->setData(Ljava/util/List;)V

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->refreshEmptyText()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->setData(Ljava/util/List;)V

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 188
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->onWriteNewClick()V

    .line 189
    return v1

    .line 191
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    return v1

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d0156 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 128
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 125
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const-string/jumbo v0, "clicked_pos"

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public onTextTemplateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 303
    if-ne v2, p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->addTextTemplate(Ljava/lang/String;)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->cancel(Z)Z

    .line 313
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mAsyncTask:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->editTextTemplate(ILjava/lang/String;)V

    goto :goto_0
.end method
