.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


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

.field final synthetic val$recipientsArrow:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .param p2, "val$recipientsArrow"    # Landroid/widget/ImageButton;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->val$recipientsArrow:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->val$recipientsArrow:Landroid/widget/ImageButton;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->val$recipientsArrow:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 1535
    const v2, 0x7f0901b5

    .line 1534
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1539
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1540
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$6;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1530
    return-void
.end method
