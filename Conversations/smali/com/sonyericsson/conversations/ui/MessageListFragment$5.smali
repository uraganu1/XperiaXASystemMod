.class Lcom/sonyericsson/conversations/ui/MessageListFragment$5;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 17

    .prologue
    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1388
    const-string/jumbo v1, "onDeleteMarkedItems called when list is not available"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1389
    return-void

    .line 1394
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v15

    .line 1395
    .local v15, "listView":Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v16

    .line 1396
    .local v16, "messageIds":[J
    move-object/from16 v0, v16

    array-length v10, v0

    .line 1397
    .local v10, "checkedCount":I
    if-nez v10, :cond_1

    .line 1398
    return-void

    .line 1400
    :cond_1
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v11

    .line 1401
    .local v11, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->checkAnyMessageStarred(Landroid/util/SparseBooleanArray;)Z

    move-result v14

    .line 1403
    .local v14, "isAnyStarred":Z
    const/4 v1, 0x1

    if-ne v10, v1, :cond_4

    .line 1404
    if-eqz v14, :cond_3

    .line 1405
    const v12, 0x7f0b01d4

    .line 1417
    .local v12, "confirmMessage":I
    :goto_0
    const/4 v8, 0x0

    .line 1418
    .local v8, "checkBoxTextResId":I
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1419
    .local v13, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v9, 0x0

    .line 1420
    .local v9, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    if-eqz v14, :cond_2

    .line 1421
    const v8, 0x7f0b01d6

    .line 1422
    new-instance v9, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;

    .end local v9    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$5;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1430
    :cond_2
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v13}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$5;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1457
    .local v3, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 1458
    const v2, 0x7f0b0161

    const v4, 0x7f0b015a

    const/4 v5, 0x0

    .line 1459
    const/4 v6, 0x0

    .line 1457
    invoke-static/range {v1 .. v9}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1386
    return-void

    .line 1407
    .end local v3    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v8    # "checkBoxTextResId":I
    .end local v12    # "confirmMessage":I
    .end local v13    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    const v12, 0x7f0b0083

    .restart local v12    # "confirmMessage":I
    goto :goto_0

    .line 1410
    .end local v12    # "confirmMessage":I
    :cond_4
    if-eqz v14, :cond_5

    .line 1411
    const v12, 0x7f0b01d5

    .restart local v12    # "confirmMessage":I
    goto :goto_0

    .line 1413
    .end local v12    # "confirmMessage":I
    :cond_5
    const v12, 0x7f0b0084

    .restart local v12    # "confirmMessage":I
    goto :goto_0
.end method

.method public onMarkAll()V
    .locals 3

    .prologue
    .line 1361
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    const-string/jumbo v2, "onMarkAll called when list is not available"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1363
    return-void

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1367
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1368
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->onUpdateActionMenu()V

    .line 1360
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get2(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap4(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V

    .line 1496
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get1(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onFinishDeleteMessagesActionMode()V

    .line 1493
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    const-string/jumbo v0, "onUnMarkAll called when list is not available"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 1383
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->onUpdateActionMenu()V

    .line 1375
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1463
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1464
    const-string/jumbo v7, "onUpdateActionMenu called when list is not available"

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1465
    return-void

    .line 1471
    :cond_0
    const/4 v1, 0x0

    .line 1472
    .local v1, "checkableCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1473
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1474
    add-int/lit8 v1, v1, 0x1

    .line 1472
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1478
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 1480
    .local v2, "checkedCount":I
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get10(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v7

    iget-object v0, v7, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 1481
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v7, 0x7f0d0155

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1482
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v2, v8, :cond_3

    move v7, v8

    :goto_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1484
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get10(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v7

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    new-array v11, v8, [Ljava/lang/Object;

    .line 1485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const v12, 0x7f0b0195

    .line 1484
    invoke-virtual {v10, v12, v11}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 1487
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get10(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v7

    iget-object v7, v7, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v10, 0x7f0d0154

    invoke-virtual {v7, v10}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1488
    .local v6, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get10(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v7

    iget-object v7, v7, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    const v10, 0x7f0d0153

    invoke-virtual {v7, v10}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1489
    .local v5, "markAllItem":Landroid/view/MenuItem;
    if-eq v2, v1, :cond_4

    move v7, v8

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1490
    if-ne v2, v1, :cond_5

    :goto_3
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1462
    return-void

    .end local v5    # "markAllItem":Landroid/view/MenuItem;
    .end local v6    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_3
    move v7, v9

    .line 1482
    goto :goto_1

    .restart local v5    # "markAllItem":Landroid/view/MenuItem;
    .restart local v6    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_4
    move v7, v9

    .line 1489
    goto :goto_2

    :cond_5
    move v8, v9

    .line 1490
    goto :goto_3
.end method
