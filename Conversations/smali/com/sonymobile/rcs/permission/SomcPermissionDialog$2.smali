.class Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;
.super Ljava/lang/Object;
.source "SomcPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setButtonClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/permission/SomcPermissionDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;->this$0:Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;->this$0:Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;->this$0:Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    # getter for: Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonymobile/rcs/permission/SomcDialogCallBack;
    invoke-static {v0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->access$000(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$2;->this$0:Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    # getter for: Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->mDialogCallback:Lcom/sonymobile/rcs/permission/SomcDialogCallBack;
    invoke-static {v0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->access$000(Lcom/sonymobile/rcs/permission/SomcPermissionDialog;)Lcom/sonymobile/rcs/permission/SomcDialogCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/permission/SomcDialogCallBack;->onCancelClicked()V

    goto :goto_0
.end method
