.class Lcom/sonymobile/rcs/service/RcsCoreService$2;
.super Ljava/lang/Object;
.source "RcsCoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/RcsCoreService;->startCore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/RcsCoreService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/RcsCoreService;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$2;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/rcs/service/RcsCoreService$2;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/RcsCoreService$2;->this$0:Lcom/sonymobile/rcs/service/RcsCoreService;

    # getter for: Lcom/sonymobile/rcs/service/RcsCoreService;->accountChangedReceiver:Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;
    invoke-static {v1}, Lcom/sonymobile/rcs/service/RcsCoreService;->access$000(Lcom/sonymobile/rcs/service/RcsCoreService;)Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/RcsCoreService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    return-void
.end method
