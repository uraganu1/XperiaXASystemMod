.class Lcom/sonymobile/settings/TetherConfirmationDialog$3;
.super Ljava/lang/Object;
.source "TetherConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/TetherConfirmationDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/TetherConfirmationDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$3;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$3;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/TetherConfirmationDialog;->finish()V

    .line 123
    return-void
.end method
