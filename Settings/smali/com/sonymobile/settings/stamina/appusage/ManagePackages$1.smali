.class Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;
.super Ljava/lang/Object;
.source "ManagePackages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/ManagePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->-get4(Lcom/sonymobile/settings/stamina/appusage/ManagePackages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;->newInstance(Ljava/util/ArrayList;)Lcom/sonymobile/settings/stamina/appusage/ManagePackages$ConfirmIgnoreFragment;

    move-result-object v0

    .line 87
    .local v0, "confirmIgnoreFragemnt":Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 88
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/appusage/ManagePackages$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/ManagePackages;

    invoke-virtual {v2}, Lcom/sonymobile/settings/stamina/appusage/ManagePackages;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ignore"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 81
    return-void
.end method
