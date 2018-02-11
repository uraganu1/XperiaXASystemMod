.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayAlertCdmaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iput-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 271
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_C2K_SLOT2_SUPPORT:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSwitchCdmaCardToGsmCard(Landroid/content/Context;I)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->val$context:Landroid/content/Context;

    .line 274
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->-get2(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v1

    .line 273
    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->setDefaultDataSubIdWithoutCapabilitySwitch(Landroid/content/Context;I)V

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 270
    return-void
.end method
