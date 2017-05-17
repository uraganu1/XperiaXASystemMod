.class Lcom/sonymobile/rcs/service/RcsCoreService$8;
.super Landroid/database/ContentObserver;
.source "RcsCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/RcsCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/RcsCoreService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/RcsCoreService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$8;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1476
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->reloadRcsSettingsCache()V

    .line 1477
    return-void
.end method
