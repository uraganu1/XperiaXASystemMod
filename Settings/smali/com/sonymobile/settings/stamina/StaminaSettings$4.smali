.class Lcom/sonymobile/settings/stamina/StaminaSettings$4;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 120
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 123
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 124
    const v3, 0x7f0b0c28

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 125
    const/4 v1, 0x1

    return v1
.end method
