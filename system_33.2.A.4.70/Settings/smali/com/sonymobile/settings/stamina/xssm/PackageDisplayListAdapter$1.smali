.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;
.super Ljava/lang/Object;
.source "PackageDisplayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
    .param p2, "val$packageName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->updatePackageDisplayList(Ljava/lang/String;)Z

    .line 114
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->-get0(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;)Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->updateWhitelist(Ljava/lang/String;)V

    .line 112
    return-void
.end method
