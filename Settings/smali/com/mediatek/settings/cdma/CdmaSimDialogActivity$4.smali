.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayDualCdmaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 144
    return-void
.end method
