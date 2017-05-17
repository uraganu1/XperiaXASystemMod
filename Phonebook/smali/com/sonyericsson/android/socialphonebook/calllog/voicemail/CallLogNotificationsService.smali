.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;
.super Landroid/app/IntentService;
.source "CallLogNotificationsService.java"


# static fields
.field public static final ACTION_MARK_NEW_VOICEMAILS_AS_OLD:Ljava/lang/String; = "com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

.field public static final ACTION_UPDATE_NOTIFICATIONS:Ljava/lang/String; = "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

.field public static final EXTRA_NEW_VOICEMAIL_URI:Ljava/lang/String; = "NEW_VOICEMAIL_URI"

.field private static final TAG:Ljava/lang/String; = "CallLogNotificationsService"


# instance fields
.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "CallLogNotificationsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public markAllNewVoicemailsAsOldAsync()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mThread:Ljava/lang/Thread;

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 78
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->release()V

    .line 86
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    const-string/jumbo v1, "CallLogNotificationsService"

    const-string/jumbo v2, "onHandleIntent() is called"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const-string/jumbo v1, "com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string/jumbo v1, "CallLogNotificationsService"

    const-string/jumbo v2, "onHandleIntent():ACTION_MARK_NEW_VOICEMAILS_AS_OLD case"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->markAllNewVoicemailsAsOldAsync()V

    .line 90
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string/jumbo v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string/jumbo v1, "CallLogNotificationsService"

    const-string/jumbo v2, "onHandleIntent():ACTION_UPDATE_NOTIFICATIONS case"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "NEW_VOICEMAIL_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 103
    .local v0, "voicemailUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;->updateNotification(Landroid/net/Uri;)V

    goto :goto_0

    .line 105
    .end local v0    # "voicemailUri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v1, "CallLogNotificationsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHandleIntent: could not handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
