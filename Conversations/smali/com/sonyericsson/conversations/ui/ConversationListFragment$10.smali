.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 23

    .prologue
    .line 1563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v18

    .line 1565
    .local v18, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCheckedItemIds()[J

    move-result-object v4

    array-length v0, v4

    move/from16 v17, v0

    .line 1566
    .local v17, "checkSize":I
    const/16 v22, 0x0

    .line 1567
    .local v22, "isAnyStarred":Z
    const/4 v12, 0x0

    .line 1568
    .local v12, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const/4 v11, 0x0

    .line 1569
    .local v11, "checkBoxTextResId":I
    new-instance v20, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1571
    .local v20, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/SafeListView;->getHeaderViewsCount()I

    move-result v21

    .line 1573
    .local v21, "headerCount":I
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/provider/CapabilityUtil;->isStarredConversationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsAdapter:Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;

    move/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListCursorAdapter;->checkAnyConversationStarred(ILandroid/util/SparseBooleanArray;)Z

    move-result v22

    .line 1579
    .end local v22    # "isAnyStarred":Z
    :cond_0
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_3

    .line 1580
    if-eqz v22, :cond_2

    .line 1581
    const v19, 0x7f0b01d1

    .line 1593
    .local v19, "confirmMessage":I
    :goto_0
    if-eqz v22, :cond_1

    .line 1594
    const v11, 0x7f0b01d3

    .line 1595
    new-instance v12, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$1;

    .end local v12    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1603
    :cond_1
    new-instance v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;ILandroid/util/SparseBooleanArray;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1631
    .local v6, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1633
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 1632
    const v5, 0x7f0b0161

    const v7, 0x7f0b015a

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1633
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1631
    invoke-static/range {v4 .. v16}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;IILandroid/widget/ListAdapter;)V

    .line 1562
    return-void

    .line 1583
    .end local v6    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v19    # "confirmMessage":I
    .restart local v12    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_2
    const v19, 0x7f0b0091

    .restart local v19    # "confirmMessage":I
    goto :goto_0

    .line 1586
    .end local v19    # "confirmMessage":I
    :cond_3
    if-eqz v22, :cond_4

    .line 1587
    const v19, 0x7f0b01d2

    .restart local v19    # "confirmMessage":I
    goto :goto_0

    .line 1589
    .end local v19    # "confirmMessage":I
    :cond_4
    const v19, 0x7f0b0092

    .restart local v19    # "confirmMessage":I
    goto :goto_0
.end method

.method public onMarkAll()V
    .locals 4

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCount()I

    move-result v2

    .line 1546
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->getFooterViewsCount()I

    move-result v3

    .line 1545
    sub-int v1, v2, v3

    .line 1547
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1548
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setItemChecked(IZ)V

    .line 1547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onUpdateActionMenu()V

    .line 1544
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    .line 1662
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->isDeleteTaskNotTriggered()Z

    move-result v1

    .line 1661
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onFinishDeleteConversationsActionMode(Z)V

    .line 1658
    :cond_0
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    .line 1554
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCount()I

    move-result v2

    .line 1555
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->getFooterViewsCount()I

    move-result v3

    .line 1554
    sub-int v1, v2, v3

    .line 1556
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1557
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/conversations/ui/SafeListView;->setItemChecked(IZ)V

    .line 1556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->onUpdateActionMenu()V

    .line 1553
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1637
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCount()I

    move-result v6

    .line 1638
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v9, v9, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/SafeListView;->getFooterViewsCount()I

    move-result v9

    .line 1637
    sub-int v2, v6, v9

    .line 1639
    .local v2, "count":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mConversationsList:Lcom/sonyericsson/conversations/ui/SafeListView;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/SafeListView;->getCheckedItemCount()I

    move-result v1

    .line 1641
    .local v1, "checkedCount":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get7(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v0, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 1642
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v6, 0x7f0d0155

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1643
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 1644
    if-lt v1, v7, :cond_1

    move v6, v7

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1647
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get7(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    new-array v10, v7, [Ljava/lang/Object;

    .line 1648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const v11, 0x7f0b0195

    .line 1647
    invoke-virtual {v9, v11, v10}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setTitleOnSelectedView(Ljava/lang/String;)V

    .line 1650
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get7(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 1651
    const v9, 0x7f0d0154

    .line 1650
    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1652
    .local v5, "unmarkAllItem":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get7(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    move-result-object v6

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mSelectionMenu:Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;

    .line 1653
    const v9, 0x7f0d0153

    .line 1652
    invoke-virtual {v6, v9}, Lcom/sonyericsson/conversations/model/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1654
    .local v4, "markAllItem":Landroid/view/MenuItem;
    if-eq v1, v2, :cond_2

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1655
    if-ne v1, v2, :cond_3

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1636
    return-void

    .end local v4    # "markAllItem":Landroid/view/MenuItem;
    .end local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 1644
    goto :goto_0

    .restart local v4    # "markAllItem":Landroid/view/MenuItem;
    .restart local v5    # "unmarkAllItem":Landroid/view/MenuItem;
    :cond_2
    move v6, v8

    .line 1654
    goto :goto_1

    :cond_3
    move v7, v8

    .line 1655
    goto :goto_2
.end method
