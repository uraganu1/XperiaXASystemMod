.class Lcom/sonymobile/settings/stamina/StaminaSettings$7;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;->initLowPerfMode(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$7;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 393
    .local v0, "val":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$7;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-get1(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 394
    const-string/jumbo v3, "lowperformance_mode"

    .line 395
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 393
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$7;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-wrap4(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    return v1

    .line 395
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
