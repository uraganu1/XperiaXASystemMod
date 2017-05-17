.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockscreenReceiver"
.end annotation


# static fields
.field public static final LOCKSCREEN_ACTIVATED_INTENT:Ljava/lang/String; = "com.sonyericsson.lockscreen.action.ACTIVATE"

.field public static final LOCKSCREEN_DEACTIVATED_INTENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1103
    const-string/jumbo v0, "com.sonyericsson.lockscreen.action.ACTIVATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1103
    if-eqz v0, :cond_2

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z

    .line 1106
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LOCKSCREEN ACTIVATED or Screen off"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z

    .line 1109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 1112
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LOCKSCREEN DEACTIVATED"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
