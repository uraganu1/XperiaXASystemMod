.class Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;
.super Ljava/lang/Object;
.source "HceOverflowDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/nfc/HceOverflowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/nfc/HceOverflowDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.settings.nfc.NFC_HCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "com.sonymobile.nfc.extra.OVERFLOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$1;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
