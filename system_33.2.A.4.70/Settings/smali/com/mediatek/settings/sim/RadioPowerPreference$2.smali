.class Lcom/mediatek/settings/sim/RadioPowerPreference$2;
.super Ljava/lang/Object;
.source "RadioPowerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/RadioPowerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/RadioPowerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/sim/RadioPowerPreference;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$2;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$2;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$2;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$2;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    .line 260
    return-void
.end method
