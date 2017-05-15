.class Lcom/sonymobile/settings/stamina/StaminaMode$6;
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
    .line 118
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$6;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-static {}, Lcom/sonymobile/settings/stamina/StaminaMode;->-get0()Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method
