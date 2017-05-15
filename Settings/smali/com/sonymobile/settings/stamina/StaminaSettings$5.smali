.class Lcom/sonymobile/settings/stamina/StaminaSettings$5;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->toggleUsm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->-wrap2(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    .line 153
    :cond_0
    return-void
.end method
