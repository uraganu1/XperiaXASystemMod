.class Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;
.super Ljava/lang/Object;
.source "NotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

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

    .line 120
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 121
    .local v2, "val":I
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get3(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 122
    return v4

    .line 125
    :cond_0
    const v3, 0x7f0b0a85

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    .line 126
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0b0a83

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 127
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 128
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_5

    move v3, v4

    .line 127
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 130
    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    .line 129
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get2(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/preference/TwoStatePreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-get2(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/preference/TwoStatePreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;->this$0:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;

    invoke-static {v3, v2}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->-set0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;I)I

    .line 135
    return v4

    .line 125
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 126
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_5
    move v3, v5

    .line 128
    goto :goto_2
.end method
