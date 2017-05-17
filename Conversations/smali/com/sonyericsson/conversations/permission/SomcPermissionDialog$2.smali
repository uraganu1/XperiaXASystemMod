.class Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;
.super Ljava/lang/Object;
.source "SomcPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setButtonClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;->this$0:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;->this$0:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;->this$0:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->-get0(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$2;->this$0:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->-get0(Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;->onCancelClicked()V

    .line 132
    :cond_0
    return-void
.end method
