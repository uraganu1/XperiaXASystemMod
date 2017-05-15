.class Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;
.super Landroid/database/ContentObserver;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaActiveStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    .line 337
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 336
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-wrap0(Lcom/sonymobile/settings/stamina/StaminaSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-get0(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-get0(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/StaminaPreference;

    .line 344
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/Utils;->getStaminaModeSummary(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    return-void
.end method
