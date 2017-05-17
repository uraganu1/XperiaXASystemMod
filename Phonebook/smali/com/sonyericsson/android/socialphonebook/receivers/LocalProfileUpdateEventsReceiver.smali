.class public Lcom/sonyericsson/android/socialphonebook/receivers/LocalProfileUpdateEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalProfileUpdateEventsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/socialphonebook/receivers/LocalProfileUpdateEventsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/receivers/LocalProfileUpdateEventsReceiver;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string/jumbo v2, "LOADED"

    .line 33
    const-string/jumbo v3, "ss"

    .line 32
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    return-void

    .line 34
    :cond_1
    return-void

    .line 41
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/receivers/LocalProfileUpdateEventsReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loading local profile triggered by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->createLoadLocalProfileIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-static {p1, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    return-void
.end method
