.class Lcom/mediatek/settings/sim/RadioPowerPreference$4;
.super Ljava/lang/Object;
.source "RadioPowerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/RadioPowerPreference;->onBindView(Landroid/view/View;)V
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
    .line 106
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-set0(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)Z

    .line 111
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get1(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->needRadioSwitch(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0, p2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap1(Lcom/mediatek/settings/sim/RadioPowerPreference;Z)V

    .line 108
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, "RadioPowerPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need switch, roll back check~~ current status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get4(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$4;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    goto :goto_0
.end method
