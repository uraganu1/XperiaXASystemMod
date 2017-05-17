.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setRecipientList(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

.field final synthetic val$recipientList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .param p2, "val$recipientList"    # Landroid/widget/ListView;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->val$recipientList:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1567
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1568
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1569
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap7(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1570
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap6(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1573
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->val$recipientList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;

    .line 1574
    .local v0, "recipientDrawerListAdapter":Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$RecipientListAdapter;->notifyDataSetChanged()V

    .line 1576
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$8;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->notifyDataSetChanged()V

    .line 1566
    return-void
.end method
