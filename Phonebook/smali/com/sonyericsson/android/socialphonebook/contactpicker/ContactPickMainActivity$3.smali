.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;
.super Ljava/lang/Object;
.source "ContactPickMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->addTab(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

.field final synthetic val$position:I

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;
    .param p2, "val$position"    # I
    .param p3, "val$tag"    # Ljava/lang/String;
    .param p4, "val$textView"    # Landroid/widget/TextView;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$position:I

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Lcom/android/contacts/list/ViewPagerTabStrip;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$position:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$position:I

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity$3;->val$textView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickMainActivity;ILjava/lang/String;Landroid/widget/TextView;)V

    .line 528
    return-void
.end method
