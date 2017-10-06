.class public Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteScreenshotReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 824
    const-string/jumbo v3, "android:cancel_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android:screenshot_uri_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    const-string/jumbo v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 831
    .local v1, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v3, "android:cancel_id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 832
    .local v0, "id":I
    const-string/jumbo v3, "android:screenshot_uri_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 833
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 836
    new-instance v3, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;

    invoke-direct {v3, p1}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/DeleteImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 823
    return-void

    .line 825
    .end local v0    # "id":I
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method