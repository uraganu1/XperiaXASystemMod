.class Lcom/sonymobile/settings/stamina/StaminaMode$8;
.super Ljava/lang/Object;
.source "StaminaMode.java"

# interfaces
.implements Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaMode;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 141
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$8;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelUpdated(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode$8;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaMode;->-get1(Lcom/sonymobile/settings/stamina/StaminaMode;)Landroid/widget/TextView;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$8;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/StaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0b0c4c

    .line 145
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
