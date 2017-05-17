.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setAlphabetIndexedScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

.field final synthetic val$buttonsBar:Landroid/view/View;

.field final synthetic val$listView:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .param p2, "val$listView"    # Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;
    .param p3, "val$buttonsBar"    # Landroid/view/View;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$listView:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$buttonsBar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "aView"    # Landroid/widget/AbsListView;
    .param p2, "aFirstVisibleItem"    # I
    .param p3, "aVisibleItemCount"    # I
    .param p4, "aTotalItemCount"    # I

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$listView:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1614
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/AbsListView;
    .param p2, "aScrollState"    # I

    .prologue
    const/4 v2, 0x0

    .line 1620
    if-nez p2, :cond_1

    .line 1621
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v0

    .line 1622
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$buttonsBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$buttonsBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    .end local v0    # "count":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$listView:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1619
    return-void

    .line 1627
    :cond_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    .line 1628
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1629
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$buttonsBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$9;->val$buttonsBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
