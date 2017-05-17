.class Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupPhonePickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->changePrimarySettingOnDB(Ljava/util/ArrayList;)V

    .line 122
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mActionListener:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;->onDone(Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method
