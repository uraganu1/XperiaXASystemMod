.class Lcom/android/contacts/editor/ContactEditorFragment$10$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$10;Landroid/widget/ImageView;Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$10;
    .param p2, "val$iv"    # Landroid/widget/ImageView;
    .param p3, "val$adapter"    # Lcom/android/contacts/util/AccountsListAdapter;
    .param p4, "val$currentAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p5, "val$currentState"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1508
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap6(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1509
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$iv:Landroid/widget/ImageView;

    const v3, 0x7f02009e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1510
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 1514
    .local v0, "newAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    .line 1516
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 1515
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->isSimNewContactPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1523
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1524
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$currentState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {v2, v3, v4, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap9(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 1507
    :cond_1
    return-void

    .line 1517
    :cond_2
    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v1

    .line 1518
    .local v1, "subscription":I
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    .line 1519
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$10$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$10;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$10;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardFull(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1520
    const/4 v4, 0x1

    .line 1518
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1521
    return-void
.end method
