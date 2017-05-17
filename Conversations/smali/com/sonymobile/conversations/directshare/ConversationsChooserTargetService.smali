.class public Lcom/sonymobile/conversations/directshare/ConversationsChooserTargetService;
.super Landroid/service/chooser/ChooserTargetService;
.source "ConversationsChooserTargetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/service/chooser/ChooserTargetService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getSortedStrequentContacts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
