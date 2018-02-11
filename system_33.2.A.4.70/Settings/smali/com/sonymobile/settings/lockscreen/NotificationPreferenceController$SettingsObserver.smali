.class final Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    .line 231
    invoke-static {p1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get1(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 226
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 228
    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    iput-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 230
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 247
    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-wrap0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V

    .line 245
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    iget-object v1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
