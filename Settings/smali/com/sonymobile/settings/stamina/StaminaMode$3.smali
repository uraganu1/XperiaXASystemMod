.class Lcom/sonymobile/settings/stamina/StaminaMode$3;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/StaminaMode;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/StaminaMode$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    .line 100
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setStaminaActiveState(Landroid/content/Context;I)V

    .line 99
    return-void
.end method
