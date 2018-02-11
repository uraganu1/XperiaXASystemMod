.class final Lcom/android/settings/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/NotificationSettings;

    .line 643
    invoke-static {p1}, Lcom/android/settings/notification/NotificationSettings;->-get1(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 634
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 633
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 636
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 635
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 638
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 637
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 640
    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 639
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 642
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-wrap6(Lcom/android/settings/notification/NotificationSettings;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-wrap4(Lcom/android/settings/notification/NotificationSettings;)V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->-wrap3(Lcom/android/settings/notification/NotificationSettings;)V

    .line 659
    :cond_3
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 647
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->-wrap0(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 648
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 650
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 651
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 652
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 646
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
