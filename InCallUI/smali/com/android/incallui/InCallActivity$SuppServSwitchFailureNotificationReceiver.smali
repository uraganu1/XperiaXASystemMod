.class Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppServSwitchFailureNotificationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;-><init>(Lcom/android/incallui/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1331
    const-string/jumbo v1, "com.sonymobile.ACTION_SUPP_SERVICE_SWITCH_FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->-get0(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/AnswerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->-get0(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/AnswerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onSuppServiceSwitchFailed()V

    .line 1327
    :cond_0
    return-void
.end method
