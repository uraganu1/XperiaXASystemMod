.class Lcom/android/contacts/editor/ContactEditorFragment$10;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ImageView;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "val$iv"    # Landroid/widget/ImageView;
    .param p3, "val$currentAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p4, "val$anchorView"    # Landroid/view/View;
    .param p5, "val$currentState"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$anchorView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1484
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap6(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1485
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-set0(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$iv:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1492
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get3(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    new-instance v3, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v0

    .line 1494
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_NO_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1493
    invoke-direct {v3, v0, v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 1500
    .local v3, "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get8(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1501
    const v1, 0x7f040001

    .line 1500
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1502
    .local v6, "accountsListView":Landroid/widget/ListView;
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1505
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$iv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$10$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$10;Landroid/widget/ImageView;Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/RawContactDelta;)V

    .line 1504
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1528
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1529
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1530
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1531
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1532
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1533
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$anchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 1535
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$10$2;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$iv:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$10$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$10;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1483
    return-void

    .line 1496
    .end local v3    # "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    .end local v6    # "accountsListView":Landroid/widget/ListView;
    :cond_1
    new-instance v3, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v0

    .line 1497
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1496
    invoke-direct {v3, v0, v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .restart local v3    # "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    goto/16 :goto_0
.end method
