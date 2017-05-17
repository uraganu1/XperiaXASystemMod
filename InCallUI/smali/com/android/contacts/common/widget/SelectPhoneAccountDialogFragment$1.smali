.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    const-string/jumbo v0, "SelectPhoneAccountDialogFragment"

    const-string/jumbo v1, "onReceive, PhoneAccount changed, dismiss current dialog."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 376
    :cond_0
    return-void
.end method
