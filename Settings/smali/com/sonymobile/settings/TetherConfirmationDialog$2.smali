.class Lcom/sonymobile/settings/TetherConfirmationDialog$2;
.super Ljava/lang/Object;
.source "TetherConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 108
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/TetherConfirmationDialog;->setResult(I)V

    .line 111
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->-get0(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->-get0(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130246

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 111
    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v1, v3}, Lcom/sonymobile/settings/TetherConfirmationDialog;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->-get1(Lcom/sonymobile/settings/TetherConfirmationDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->finish()V

    .line 109
    return-void
.end method
