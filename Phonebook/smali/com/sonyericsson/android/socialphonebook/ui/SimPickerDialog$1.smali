.class Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->dismiss()V

    .line 162
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v0

    .line 163
    .local v0, "subId":I
    if-ltz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->-get1(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->-get0(Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;->onSimSelected(ILjava/lang/String;)V

    .line 157
    :cond_1
    return-void
.end method
