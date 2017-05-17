.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string/jumbo v1, "android.intent.action.NEW_VOICEMAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v1, "NEW_VOICEMAIL_URI"

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
