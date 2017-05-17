.class Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$2;
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
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog$2;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 64
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setResendUndeliveredMessageDialogShown()V

    .line 63
    return-void
.end method
