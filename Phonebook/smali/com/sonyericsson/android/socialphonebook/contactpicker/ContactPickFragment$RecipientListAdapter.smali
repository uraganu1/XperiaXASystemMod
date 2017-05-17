.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->count()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->get(I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1696
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1661
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->get(I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    move-result-object v2

    .line 1663
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    if-nez p2, :cond_0

    .line 1664
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1665
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04003e

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1668
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0e00bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1669
    .local v4, "tvName":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    const v5, 0x7f0e0089

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1672
    .local v3, "tvData":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;->isNoData()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    const v5, 0x7f0e00bb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1677
    .local v0, "delete":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1679
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1678
    const v6, 0x7f0901b1

    .line 1677
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1681
    return-object p2

    .end local v0    # "delete":Landroid/widget/ImageView;
    :cond_1
    move v5, v6

    .line 1674
    goto :goto_0
.end method
