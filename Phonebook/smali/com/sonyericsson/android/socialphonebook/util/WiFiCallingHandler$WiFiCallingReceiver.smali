.class Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiCallingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiCallingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.movial.IMS_REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    const-string/jumbo v2, "IMS_REG_STATUS"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->-set0(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;Z)Z

    .line 112
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wi-Fi Calling update received, enabled status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)Z

    move-result v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;->onWiFiCallingStatusChanged()V

    .line 108
    :cond_0
    return-void
.end method
