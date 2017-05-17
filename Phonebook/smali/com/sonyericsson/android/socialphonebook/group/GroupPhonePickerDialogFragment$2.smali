.class Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$2;
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
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mActionListener:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;->onCancel()V

    .line 128
    return-void
.end method
