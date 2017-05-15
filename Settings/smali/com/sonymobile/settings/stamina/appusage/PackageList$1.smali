.class Lcom/sonymobile/settings/stamina/appusage/PackageList$1;
.super Ljava/lang/Object;
.source "PackageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/appusage/PackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/appusage/PackageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/appusage/PackageList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/appusage/PackageList$1;->this$0:Lcom/sonymobile/settings/stamina/appusage/PackageList;

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/stamina/appusage/IAppUsageAdapterItem;->onClick(Landroid/app/Fragment;)V

    .line 60
    return-void
.end method
