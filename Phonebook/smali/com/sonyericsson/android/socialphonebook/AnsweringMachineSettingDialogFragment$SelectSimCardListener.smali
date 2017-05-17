.class Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;
.super Ljava/lang/Object;
.source "AnsweringMachineSettingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectSimCardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    const/4 v1, -0x1

    .line 91
    .local v1, "subscription":I
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->getAnsweringMachineSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment$SelectSimCardListener;->this$0:Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    const/4 v1, 0x0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v1, 0x1

    .line 97
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
