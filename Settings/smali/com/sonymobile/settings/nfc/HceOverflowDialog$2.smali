.class Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;
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
    .line 56
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceOverflowDialog$2;->this$0:Lcom/sonymobile/settings/nfc/HceOverflowDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceOverflowDialog;->finish()V

    .line 58
    return-void
.end method
