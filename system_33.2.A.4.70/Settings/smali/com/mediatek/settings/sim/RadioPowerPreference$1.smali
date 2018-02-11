.class Lcom/mediatek/settings/sim/RadioPowerPreference$1;
.super Ljava/lang/Object;
.source "RadioPowerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 221
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x2

    .line 224
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get1(Lcom/mediatek/settings/sim/RadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v3}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result v7

    .line 226
    .local v7, "result":Z
    if-eqz v7, :cond_3

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string/jumbo v0, "TAG"

    const-string/jumbo v2, "mDialogClickListener  BUTTON_POSITIVE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v0

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get0(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/sim/SimSettings;->setSMSPromptEnabled(ZLandroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setDefalut(I)V

    .line 238
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 239
    .local v4, "arg1":I
    if-eqz v7, :cond_1

    .line 240
    const/4 v4, 0x0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v6

    .line 243
    .local v6, "isChecked":Z
    if-eqz v6, :cond_5

    const/4 v5, 0x0

    .line 244
    .local v5, "arg2":I
    :goto_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap4(Lcom/mediatek/settings/sim/RadioPowerPreference;)V

    .line 245
    if-eqz v6, :cond_6

    .line 246
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get2(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap2(Lcom/mediatek/settings/sim/RadioPowerPreference;ILandroid/os/Handler;III)V

    .line 223
    .end local v4    # "arg1":I
    .end local v5    # "arg2":I
    .end local v6    # "isChecked":Z
    .end local v7    # "result":Z
    :cond_2
    :goto_2
    return-void

    .line 236
    .restart local v7    # "result":Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get3(Lcom/mediatek/settings/sim/RadioPowerPreference;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 243
    .restart local v4    # "arg1":I
    .restart local v6    # "isChecked":Z
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "arg2":I
    goto :goto_1

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get2(Lcom/mediatek/settings/sim/RadioPowerPreference;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static/range {v0 .. v5}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-wrap2(Lcom/mediatek/settings/sim/RadioPowerPreference;ILandroid/os/Handler;III)V

    goto :goto_2

    .line 250
    .end local v4    # "arg1":I
    .end local v5    # "arg2":I
    .end local v6    # "isChecked":Z
    .end local v7    # "result":Z
    :cond_7
    const/4 v0, -0x2

    if-ne p2, v0, :cond_8

    .line 251
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    goto :goto_2

    .line 252
    :cond_8
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->-get5(Lcom/mediatek/settings/sim/RadioPowerPreference;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/RadioPowerPreference;

    invoke-virtual {v2}, Lcom/mediatek/settings/sim/RadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    goto :goto_2
.end method
