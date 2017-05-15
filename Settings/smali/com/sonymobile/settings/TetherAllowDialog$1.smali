.class Lcom/sonymobile/settings/TetherAllowDialog$1;
.super Ljava/lang/Object;
.source "TetherAllowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/TetherAllowDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/TetherAllowDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/TetherAllowDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/TetherAllowDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/settings/TetherAllowDialog$1;->this$0:Lcom/sonymobile/settings/TetherAllowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/settings/TetherAllowDialog$1;->this$0:Lcom/sonymobile/settings/TetherAllowDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/TetherAllowDialog;->setResult(I)V

    .line 60
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/settings/TetherAllowDialog$1;->this$0:Lcom/sonymobile/settings/TetherAllowDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/TetherAllowDialog;->finish()V

    .line 58
    return-void
.end method
