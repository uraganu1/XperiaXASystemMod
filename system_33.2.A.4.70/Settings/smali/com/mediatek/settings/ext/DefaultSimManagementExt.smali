.class public Lcom/mediatek/settings/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISimManagementExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeListArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public customizeSubscriptionInfoArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "subscriptionInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public customizeValue(I)I
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 85
    return p1
.end method

.method public getDefaultSmsSubIdForAuto()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    return-void
.end method

.method public initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public isSimDialogNeeded()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    return-void
.end method

.method public setDataState(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 59
    return-void
.end method

.method public setDataStateEnable(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 67
    return-void
.end method

.method public setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 126
    return-object p1
.end method

.method public setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 117
    return-object p2
.end method

.method public setRadioPowerState(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 106
    return-void
.end method

.method public setSmsAutoItemIcon(Landroid/widget/ImageView;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "dialogId"    # I
    .param p3, "position"    # I

    .prologue
    .line 41
    return-void
.end method

.method public showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
    .locals 0
    .param p1, "prefFragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "isResumed"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public switchDefaultDataSub(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public updateDefaultSmsSummary(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 28
    return-void
.end method

.method public updateSimEditorPref(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 24
    return-void
.end method

.method public useCtTestcard()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method
