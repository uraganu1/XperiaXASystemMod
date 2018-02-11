.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayOmhWarningDialog()V
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
    .line 314
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 317
    const-string/jumbo v0, "CdmaSimDialogActivity"

    const-string/jumbo v1, "OMH warning dialog dismissed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v0}, Lcom/mediatek/settings/cdma/OmhEventHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;

    move-result-object v0

    .line 319
    const/16 v1, 0x67

    .line 318
    invoke-virtual {v0, v1}, Lcom/mediatek/settings/cdma/OmhEventHandler;->sendEmptyMessage(I)Z

    .line 321
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$11;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap0(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Z)V

    .line 316
    return-void
.end method
