.class Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;
.super Ljava/lang/Object;
.source "XssmWhitelistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
    .param p2, "val$packageName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->-get0(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->updatePackageDisplayList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->-get1(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->updatePackageDisplayList(Ljava/lang/String;)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->updateWhitelist(Ljava/lang/String;)V

    .line 180
    return-void
.end method
