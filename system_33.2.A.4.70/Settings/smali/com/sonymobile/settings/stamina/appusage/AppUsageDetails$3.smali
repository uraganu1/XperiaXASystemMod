.class Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;
.super Ljava/lang/Object;
.source "AppUsageDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->setUpData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-static {}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;->newInstance()Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$ConfirmForceStopFragment;

    move-result-object v0

    .line 155
    .local v0, "newFragment":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 156
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails$3;->this$0:Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/appusage/AppUsageDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "forceclose"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    return-void
.end method
