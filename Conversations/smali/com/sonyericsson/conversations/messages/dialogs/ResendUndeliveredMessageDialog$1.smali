.class Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;
.super Ljava/lang/Object;
.source "ResendUndeliveredMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 41
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 42
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    .line 43
    .local v1, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setResendUndeliveredMessageDialogShown()V

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setUndeliveredMessageResendBehavior(Z)V

    .line 45
    new-instance v2, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;-><init>(Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1;Lcom/sonyericsson/conversations/Apis;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method
