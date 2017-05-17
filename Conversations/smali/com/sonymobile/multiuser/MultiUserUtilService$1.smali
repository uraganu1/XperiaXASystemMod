.class Lcom/sonymobile/multiuser/MultiUserUtilService$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserUtilService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/multiuser/MultiUserUtilService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/multiuser/MultiUserUtilService;


# direct methods
.method constructor <init>(Lcom/sonymobile/multiuser/MultiUserUtilService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/multiuser/MultiUserUtilService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/multiuser/MultiUserUtilService$1;->this$0:Lcom/sonymobile/multiuser/MultiUserUtilService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableApp(Landroid/content/Context;)V

    .line 38
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManager()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    goto :goto_0
.end method
