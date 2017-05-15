.class Lcom/sonymobile/settings/stamina/EstimationPreference$1;
.super Ljava/lang/Object;
.source "EstimationPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/EstimationPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/EstimationPreference;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/EstimationPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/EstimationPreference;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/EstimationPreference$1;->this$0:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/EstimationPreference$1;->this$0:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 169
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 170
    const v3, 0x7f0b074d

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 169
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 167
    return-void
.end method
