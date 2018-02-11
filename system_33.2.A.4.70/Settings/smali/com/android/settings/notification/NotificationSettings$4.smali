.class Lcom/android/settings/notification/NotificationSettings$4;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
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
    .line 499
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 502
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 503
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->-get3(Lcom/android/settings/notification/NotificationSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 504
    return v4

    .line 507
    :cond_0
    const v3, 0x7f0b0a85

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    .line 508
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0b0a83

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 509
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->-wrap0(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 510
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_5

    move v3, v4

    .line 509
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->-wrap0(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 512
    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    .line 511
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->-get2(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->-get2(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v3, v2}, Lcom/android/settings/notification/NotificationSettings;->-set0(Lcom/android/settings/notification/NotificationSettings;I)I

    .line 517
    return v4

    .line 507
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 508
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_5
    move v3, v5

    .line 510
    goto :goto_2
.end method
