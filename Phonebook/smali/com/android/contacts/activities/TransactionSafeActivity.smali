.class public abstract Lcom/android/contacts/activities/TransactionSafeActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "TransactionSafeActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/contacts/activities/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onBackPressed()V

    .line 81
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onResume()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 56
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStart()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/TransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    .line 50
    return-void
.end method
