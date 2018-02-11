.class Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;
.super Ljava/lang/Object;
.source "AppConsumingDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStaminaActiveState(Landroid/content/Context;)I

    move-result v0

    .line 117
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    .line 118
    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaActiveState(Landroid/content/Context;I)V

    .line 115
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails$2;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/AppConsumingDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 121
    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaActiveState(Landroid/content/Context;I)V

    goto :goto_0
.end method
