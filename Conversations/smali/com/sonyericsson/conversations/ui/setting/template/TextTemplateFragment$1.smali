.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 363
    .local v7, "checkState":Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 365
    return-void

    .line 367
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v11, "markedTextTemplateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 370
    .local v6, "checkSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 371
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    .line 372
    .local v12, "pos":I
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get5(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v0}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v10

    .line 374
    .local v10, "id":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v10    # "id":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 379
    .end local v12    # "pos":I
    :cond_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;

    invoke-direct {v2, p0, v11}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;Ljava/util/ArrayList;)V

    .line 387
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 388
    const v8, 0x7f0b0085

    .line 393
    .local v8, "confirmMessage":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 394
    const v1, 0x7f0b0161

    const v3, 0x7f0b015a

    .line 393
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    .line 360
    return-void

    .line 390
    .end local v8    # "confirmMessage":I
    :cond_3
    const v8, 0x7f0b0086

    .restart local v8    # "confirmMessage":I
    goto :goto_1
.end method

.method public onMarkAll()V
    .locals 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 346
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->onUpdateActionMenu()V

    .line 344
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get1(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get0(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateFragmentCallback;->onFinishDeleteTextTemplate()V

    .line 417
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    .line 353
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 354
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->onUpdateActionMenu()V

    .line 352
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 399
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 400
    .local v2, "count":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get4(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 402
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get3(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v0, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 403
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v6, 0x7f0d0155

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 404
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v1, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get3(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    new-array v10, v7, [Ljava/lang/Object;

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const v11, 0x7f0b0195

    .line 406
    invoke-virtual {v9, v11, v10}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 409
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get3(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 410
    const v9, 0x7f0d0154

    .line 409
    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 411
    .local v5, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->-get3(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 412
    const v9, 0x7f0d0153

    .line 411
    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 413
    .local v4, "markAllItem":Landroid/view/MenuItem;
    if-eq v1, v2, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    if-ne v1, v2, :cond_2

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    return-void

    .end local v4    # "markAllItem":Landroid/view/MenuItem;
    .end local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_0
    move v6, v8

    .line 404
    goto :goto_0

    .restart local v4    # "markAllItem":Landroid/view/MenuItem;
    .restart local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 413
    goto :goto_1

    :cond_2
    move v7, v8

    .line 414
    goto :goto_2
.end method
