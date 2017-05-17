.class public Lcom/sonymobile/jms/intent/RcsIntentService;
.super Landroid/app/IntentService;
.source "RcsIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/jms/intent/RcsIntentService;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rcsIntent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getRcsIntentServiceApi()Lcom/sonymobile/jms/intent/RcsIntentServiceApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/intent/RcsIntentServiceApi;->pushRcsIntentForProcessing(Landroid/content/Intent;)V

    .line 51
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/sonymobile/jms/intent/RcsIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " should never be started with no intent to handle!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 45
    return-void
.end method
