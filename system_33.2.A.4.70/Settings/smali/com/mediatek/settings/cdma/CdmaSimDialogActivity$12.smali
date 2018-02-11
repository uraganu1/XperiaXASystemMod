.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayOmhDataPickDialog()V
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
    .line 342
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    const-string/jumbo v0, "CdmaSimDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OMH data pick dialog, set data sub to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-wrap1(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$12;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 344
    return-void
.end method
