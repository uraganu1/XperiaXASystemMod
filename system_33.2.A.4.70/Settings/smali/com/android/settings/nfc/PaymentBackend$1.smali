.class Lcom/android/settings/nfc/PaymentBackend$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/nfc/PaymentBackend;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.nfc.action.REFRESH_PAYMENT_BACKEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v1, "Settings.PaymentBackend"

    const-string/jumbo v2, "PaymentReceiver/ACTION_REFRESH_PAYMENT_BACKEND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    .line 103
    :cond_0
    return-void
.end method
