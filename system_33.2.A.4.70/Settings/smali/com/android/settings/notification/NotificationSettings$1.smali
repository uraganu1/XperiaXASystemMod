.class Lcom/android/settings/notification/NotificationSettings$1;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 337
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get5(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get0(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    .line 338
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 340
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get1(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 344
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get4(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get0(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    .line 345
    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationSettings;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 347
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$1;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-get1(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 336
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method
