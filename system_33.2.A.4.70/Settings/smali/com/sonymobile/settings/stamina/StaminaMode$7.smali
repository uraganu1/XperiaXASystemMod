.class Lcom/sonymobile/settings/stamina/StaminaMode$7;
.super Ljava/lang/Object;
.source "StaminaMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 124
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$7;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$7;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 128
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/sonymobile/settings/stamina/HowToUseStaminaFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    const v3, 0x7f0b0bc1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 128
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 126
    return-void
.end method
