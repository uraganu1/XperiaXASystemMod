.class public interface abstract Lcom/mediatek/settings/ext/ISimManagementExt;
.super Ljava/lang/Object;
.source "ISimManagementExt.java"


# virtual methods
.method public abstract customizeListArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeSubscriptionInfoArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeValue(I)I
.end method

.method public abstract getDefaultSmsSubIdForAuto()I
.end method

.method public abstract hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
.end method

.method public abstract initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method public abstract isSimDialogNeeded()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume(Landroid/content/Context;)V
.end method

.method public abstract setDataState(I)V
.end method

.method public abstract setDataStateEnable(I)V
.end method

.method public abstract setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
.end method

.method public abstract setRadioPowerState(IZ)V
.end method

.method public abstract setSmsAutoItemIcon(Landroid/widget/ImageView;II)V
.end method

.method public abstract showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
.end method

.method public abstract switchDefaultDataSub(Landroid/content/Context;I)Z
.end method

.method public abstract updateDefaultSmsSummary(Landroid/preference/Preference;)V
.end method

.method public abstract useCtTestcard()Z
.end method
