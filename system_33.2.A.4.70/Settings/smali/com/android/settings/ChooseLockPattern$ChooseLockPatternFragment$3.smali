.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

.field final synthetic val$wasSecureBefore:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
    .param p2, "val$wasSecureBefore"    # Z

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iput-boolean p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->val$wasSecureBefore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x0

    .line 699
    if-nez p1, :cond_0

    .line 700
    const-string/jumbo v1, "ChooseLockPattern"

    const-string/jumbo v2, "critical: no token returned for known good pattern"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 704
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-set0(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 706
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->val$wasSecureBefore:Z

    if-nez v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 708
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 709
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 713
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 715
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    .line 714
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 717
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-wrap0(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 698
    return-void
.end method
