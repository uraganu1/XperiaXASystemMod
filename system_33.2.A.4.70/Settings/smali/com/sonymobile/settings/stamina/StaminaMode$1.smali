.class Lcom/sonymobile/settings/stamina/StaminaMode$1;
.super Ljava/lang/Object;
.source "StaminaMode.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/StaminaMode;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaBatteryThreshold(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode$1;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaBatteryThreshold(Landroid/content/Context;I)V

    .line 65
    return-void
.end method
