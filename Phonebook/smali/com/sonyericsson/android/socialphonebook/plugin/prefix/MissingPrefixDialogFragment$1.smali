.class Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;
.super Ljava/lang/Object;
.source "MissingPrefixDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 42
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 43
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.somc.android.ACTION_GENERIC_PREFIX_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->isActivityForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const-string/jumbo v2, "type"

    .line 48
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No ACTION_GENERIC_PREFIX Activity found on device"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
