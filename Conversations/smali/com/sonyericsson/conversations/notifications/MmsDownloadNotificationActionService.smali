.class public Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;
.super Landroid/app/IntentService;
.source "MmsDownloadNotificationActionService.java"


# static fields
.field public static final INTENT_ACTION_DOWNLOAD_MMS:Ljava/lang/String;

.field public static final INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/sonyericsson/conversations/notifications/MarkAsReadNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "download_mms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_ACTION_DOWNLOAD_MMS:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".intent_extra_message_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private removeNotification(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 75
    .local v0, "notificationManager":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Landroid/net/Uri;)V

    .line 72
    return-void
.end method

.method private startDownLoad(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 79
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "manual_request"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 59
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 60
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 61
    const-string/jumbo v1, "Tried to start MmsDownloadNotificationService with null uri"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void

    .line 66
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->INTENT_ACTION_DOWNLOAD_MMS:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->removeNotification(Landroid/net/Uri;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/notifications/MmsDownloadNotificationActionService;->startDownLoad(Landroid/net/Uri;)V

    .line 56
    :cond_2
    return-void
.end method
