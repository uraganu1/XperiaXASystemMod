.class final Lcom/sonyericsson/conversations/permission/PermissionUtils$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/permission/PermissionUtils;->writeSettingsDialogCallback(Landroid/app/Activity;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V
    .locals 0
    .param p1, "val$activity"    # Landroid/app/Activity;
    .param p2, "val$dialog"    # Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;->val$dialog:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public onContinueClicked()V
    .locals 3

    .prologue
    .line 392
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;->val$activity:Landroid/app/Activity;

    .line 392
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getWriteSettingsPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;->val$activity:Landroid/app/Activity;

    const v2, 0xadab

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;->val$dialog:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->dismiss()V

    .line 391
    return-void
.end method

.method public onOkClicked()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
