.class Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;
.super Ljava/lang/Object;
.source "ContactsListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->createOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 550
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p3, v2

    if-ltz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    :cond_0
    return v3

    .line 552
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 553
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->enterSelectionMode()V

    move-object v0, p1

    .line 554
    check-cast v0, Landroid/widget/ListView;

    .line 555
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 556
    .local v1, "toggle":Z
    :goto_0
    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 557
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    .line 558
    const/4 v2, 0x1

    return v2

    .line 555
    .end local v1    # "toggle":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "toggle":Z
    goto :goto_0
.end method
