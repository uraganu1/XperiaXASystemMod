.class Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;
.super Ljava/lang/Object;
.source "AnsweringMachineSettingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    .line 72
    .local v0, "checker":Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->getOnlyEnabledSim()I

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-static {v1, p1, v2}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;Landroid/content/DialogInterface;I)V

    .line 76
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->getOnlyEnabledSim()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-static {v1, p1, v3}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;Landroid/content/DialogInterface;I)V

    .line 69
    :cond_1
    return-void
.end method
