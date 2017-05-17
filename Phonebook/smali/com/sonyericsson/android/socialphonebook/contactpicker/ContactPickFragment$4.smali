.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$4;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1500
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .line 1501
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->removeContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 1499
    return-void
.end method
