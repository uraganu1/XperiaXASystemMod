.class Lcom/sonyericsson/conversations/ui/JoynPreferences$1;
.super Ljava/lang/Object;
.source "JoynPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/JoynPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v5, "pref_key_rcs_user_alias"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/setting/ImSettingApi;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "displayName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->setDisplayName(Ljava/lang/String;)V

    .line 59
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap2(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V

    .line 55
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v5, "pref_key_rcs_send_read_notification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 63
    .local v4, "pref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/jms/setting/ImSettingApi;->setDisplayedNotificationEnabled(Z)V

    goto :goto_0

    .line 64
    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    :cond_2
    const-string/jumbo v5, "pref_key_rcs_auto_accept_filetransfer"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 67
    .restart local v4    # "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 68
    .local v0, "checked":Z
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileTransfersAutoAccepted(Z)V

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileTransfersAutoAcceptedWhileRoaming(Z)V

    .line 71
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap3(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V

    goto :goto_0

    .line 73
    .end local v0    # "checked":Z
    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    :cond_3
    const-string/jumbo v5, "pref_key_rcs_auto_accept_filetransfer_while_roaming"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 76
    .restart local v4    # "pref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileTransfersAutoAcceptedWhileRoaming(Z)V

    goto :goto_0

    .line 77
    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    :cond_4
    const-string/jumbo v5, "pref_key_rcs_file_resize"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 79
    .local v3, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v2

    .line 80
    .local v2, "fileResizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->setFileResizeOption(Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    .line 81
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap5(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    goto/16 :goto_0

    .line 82
    .end local v2    # "fileResizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    .end local v3    # "pref":Landroid/preference/ListPreference;
    :cond_5
    const-string/jumbo v5, "pref_key_rcs_service_on_off"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 83
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 85
    .restart local v4    # "pref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5, v4}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-wrap1(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/SwitchPreference;)V

    goto/16 :goto_0

    .line 86
    .end local v4    # "pref":Landroid/preference/SwitchPreference;
    :cond_6
    const-string/jumbo v5, "pref_key_rcs_undelivered_message"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 89
    .restart local v4    # "pref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;->this$0:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-get3(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setUndeliveredMessageResendBehavior(Z)V

    goto/16 :goto_0
.end method
