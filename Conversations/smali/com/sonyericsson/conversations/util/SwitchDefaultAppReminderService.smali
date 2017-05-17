.class public Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;
.super Landroid/app/IntentService;
.source "SwitchDefaultAppReminderService.java"


# static fields
.field public static final INTENT_ACTION_SWITCH_DEFAULT_SMS_APP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string/jumbo v1, ".action_switch_default_sms_app"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;->INTENT_ACTION_SWITCH_DEFAULT_SMS_APP:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;->INTENT_ACTION_SWITCH_DEFAULT_SMS_APP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SWITCH_DEFAULT_SMS_APP_REMINDER:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 34
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 36
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->persistOnDefaultSmsAppOneTimeReminderShown()V

    .line 29
    :cond_1
    return-void
.end method
