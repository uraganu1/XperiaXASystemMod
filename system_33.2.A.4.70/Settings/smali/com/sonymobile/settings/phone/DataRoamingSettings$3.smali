.class Lcom/sonymobile/settings/phone/DataRoamingSettings$3;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "newState":I
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get2(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-get0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap7(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    .line 188
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const v2, 0x16204a9a

    invoke-static {v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap11(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    const v2, 0x16204a99

    invoke-static {v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap12(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V

    goto :goto_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap6(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I

    goto :goto_0
.end method
