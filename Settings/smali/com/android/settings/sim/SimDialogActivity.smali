.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;,
        Lcom/android/settings/sim/SimDialogActivity$1;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mRCSExt:Lcom/mediatek/settings/ext/IRCSSettings;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/sim/SimDialogActivity;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;I)I
    .locals 1
    .param p1, "subInfoList"    # Ljava/util/List;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimDialogActivity;->getPickSmsDefaultSub(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "preferred_sim"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 600
    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimDialogActivity$1;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private changeDialogTitle(Landroid/app/AlertDialog$Builder;I)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "id"    # I

    .prologue
    const/4 v3, -0x1

    .line 725
    packed-switch p2, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 743
    const-string/jumbo v2, " in SIM dialog."

    .line 742
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a20

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-interface {v0, v1, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 724
    :goto_0
    return-void

    .line 732
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-interface {v0, v1, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0a2c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-interface {v0, v1, v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayPreferredDialog(I)V
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 115
    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 125
    .local v5, "subId":I
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 126
    const v8, 0x7f0b0452

    .line 125
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b0453

    .line 127
    invoke-virtual {v3, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v7, Lcom/android/settings/sim/SimDialogActivity$2;

    invoke-direct {v7, p0, v4, v1}, Lcom/android/settings/sim/SimDialogActivity$2;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    const v8, 0x7f0b0155

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v7, Lcom/android/settings/sim/SimDialogActivity$3;

    invoke-direct {v7, p0}, Lcom/android/settings/sim/SimDialogActivity$3;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    const v8, 0x7f0b0156

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    new-instance v7, Lcom/android/settings/sim/SimDialogActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/sim/SimDialogActivity$4;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 109
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "subId":I
    .end local v6    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    goto :goto_0
.end method

.method private getAdapterData(ILjava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    .local p2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local p3, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local p4, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 700
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    packed-switch p1, :pswitch_data_0

    .line 711
    const/4 v0, 0x0

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid dialog type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 713
    const-string/jumbo v3, " in SIM dialog."

    .line 712
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :pswitch_0
    move-object v0, p2

    .line 715
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    return-object v0

    .line 705
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_1
    move-object v0, p3

    .line 706
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    .line 708
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2
    move-object v0, p4

    .line 709
    .local v0, "listForAdpter":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPickSmsDefaultSub(Ljava/util/List;I)I
    .locals 5
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    .line 651
    const/4 v1, -0x1

    .line 653
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v2, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeValue(I)I

    move-result p2

    .line 655
    if-ge p2, v3, :cond_2

    .line 656
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 657
    .local v0, "length":I
    :goto_0
    if-ne v0, v3, :cond_1

    .line 658
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 668
    .end local v0    # "length":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mRCSExt:Lcom/mediatek/settings/ext/IRCSSettings;

    invoke-interface {v2, p1, p2, v1}, Lcom/mediatek/settings/ext/IRCSSettings;->getDefaultSmsClickContentExt(Ljava/util/List;II)I

    move-result v1

    .line 669
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPickSmsDefaultSub, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v1

    .line 656
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "length":I
    goto :goto_0

    .line 660
    :cond_1
    const/4 v1, -0x2

    goto :goto_1

    .line 662
    .end local v0    # "length":I
    :cond_2
    if-lt p2, v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge p2, v2, :cond_3

    .line 663
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_1

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->getDefaultSmsSubIdForAuto()I

    move-result v1

    goto :goto_1
.end method

.method public static isEqualDefaultValue(Landroid/content/Context;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogType"    # I
    .param p2, "targetValue"    # I

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, "isEqual":Z
    packed-switch p1, :pswitch_data_0

    .line 780
    .end local v1    # "isEqual":Z
    :goto_0
    sget-object v5, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isEqualDefaultValue()... isEqual: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dialogType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 781
    const-string/jumbo v7, " targetValue: "

    .line 780
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v1

    .line 758
    .restart local v1    # "isEqual":Z
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    if-ne v5, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 761
    :pswitch_1
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 763
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 764
    .local v2, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const/4 v5, 0x1

    if-ge p2, v5, :cond_1

    .line 765
    const/4 v3, 0x0

    .line 767
    :goto_1
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 768
    .local v0, "defaultHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v3, :cond_3

    .line 769
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 765
    .end local v0    # "defaultHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    add-int/lit8 v5, p2, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .local v3, "targetHandle":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1

    .line 769
    .end local v3    # "targetHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v0    # "defaultHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {v3, v0}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isEqual":Z
    goto :goto_0

    .line 775
    .end local v0    # "defaultHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .local v1, "isEqual":Z
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v5

    if-ne v5, p2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    const/4 v7, 0x1

    .line 170
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 172
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataState(I)V

    .line 174
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_CT6M_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 175
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 176
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 177
    .local v0, "enableBefore":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 178
    .local v1, "preSubId":I
    sget-object v4, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    const-string/jumbo v6, ", preSubId: "

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    if-eq p2, v1, :cond_0

    .line 182
    invoke-virtual {v2, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v3, p2, v7}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 185
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 193
    .end local v0    # "enableBefore":Z
    .end local v1    # "preSubId":I
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataStateEnable(I)V

    .line 198
    iget-object v4, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 199
    const v6, 0x7f0b0a21

    .line 198
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 169
    return-void

    .line 189
    :cond_1
    invoke-virtual {v2, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 204
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 206
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p0, p1}, Lcom/mediatek/settings/cdma/CdmaUtils;->shouldSwitchCapability(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const v1, 0x7f0b014d

    .line 209
    const/4 v2, 0x0

    .line 208
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->setRadioCapability(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 216
    :cond_2
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0
.end method

.method private setSimStateCheck()V
    .locals 3

    .prologue
    .line 611
    new-instance v1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 612
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v2, Lcom/android/settings/sim/SimDialogActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/SimDialogActivity$8;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 620
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "itentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sim/SimDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 222
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 224
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0, p1}, Lcom/mediatek/settings/cdma/CdmaUtils;->shouldSwichCapabilityForCalls(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const v2, 0x7f0b014c

    .line 227
    const/4 v3, 0x0

    .line 226
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->phoneAccountHandleTosubscriptionId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 232
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-static {p0, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->setRadioCapability(Landroid/content/Context;I)Z

    move-result v2

    .line 232
    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 221
    .end local v0    # "subId":I
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method

.method private setupSmsSubInfoList(Ljava/util/ArrayList;Ljava/util/List;ILjava/util/ArrayList;)V
    .locals 6
    .param p3, "selectableSubInfoLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .local p4, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x0

    .line 676
    const/4 v3, 0x1

    if-le p3, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mRCSExt:Lcom/mediatek/settings/ext/IRCSSettings;

    invoke-interface {v3}, Lcom/mediatek/settings/ext/IRCSSettings;->isNeedAskFirstItemForSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0a3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 681
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 682
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 684
    .local v0, "displayName":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 685
    const-string/jumbo v0, ""

    .line 687
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "displayName":Ljava/lang/CharSequence;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v3, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeListArray(Ljava/util/List;)V

    .line 691
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v3, p4}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSubscriptionInfoArray(Ljava/util/List;)V

    .line 692
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v3, p1, p4}, Lcom/mediatek/settings/ext/ISimManagementExt;->initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 675
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 243
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 244
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 246
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 248
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 250
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 251
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 252
    return-object v1

    .line 256
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private unsetSimStateCheck()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 627
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 260
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v27

    .line 263
    .local v27, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v26

    .line 264
    .local v26, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v26, :cond_1

    const/16 v21, 0x0

    .line 267
    .local v21, "selectableSubInfoLength":I
    :goto_0
    new-instance v22, Lcom/android/settings/sim/SimDialogActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v26

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/sim/SimDialogActivity$5;-><init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V

    .line 384
    .local v22, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v17, Lcom/android/settings/sim/SimDialogActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/sim/SimDialogActivity$6;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 395
    .local v17, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v13, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v24, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_5

    .line 400
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v28

    .line 401
    .local v28, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v29

    .line 403
    .local v29, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v28 .. v28}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v20

    .line 406
    .local v20, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0a3c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 413
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v19

    .line 416
    .local v19, "phoneAccount":Landroid/telecom/PhoneAccount;
    if-eqz v19, :cond_0

    .line 420
    invoke-virtual/range {v19 .. v19}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v25

    .line 422
    .local v25, "subId":I
    const/4 v6, -0x1

    move/from16 v0, v25

    if-eq v0, v6, :cond_2

    .line 423
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    .line 425
    .local v23, "sir":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    .end local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v21    # "selectableSubInfoLength":I
    .end local v22    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v24    # "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .end local v25    # "subId":I
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v21

    .restart local v21    # "selectableSubInfoLength":I
    goto/16 :goto_0

    .line 427
    .restart local v13    # "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v17    # "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    .restart local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .restart local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v22    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v24    # "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v25    # "subId":I
    .restart local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 432
    .end local v19    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v25    # "subId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeListArray(Ljava/util/List;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v6, v13}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSubscriptionInfoArray(Ljava/util/List;)V

    .line 450
    .end local v20    # "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v28    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v29    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_2
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 452
    .local v10, "arr":[Ljava/lang/String;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 457
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/settings/sim/SimDialogActivity;->getAdapterData(ILjava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    .line 459
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 460
    const v9, 0x7f0400e7

    move-object/from16 v6, p0

    move/from16 v11, p2

    .line 454
    invoke-direct/range {v5 .. v11}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 463
    .local v5, "adapter":Landroid/widget/ListAdapter;
    packed-switch p2, :pswitch_data_0

    .line 474
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid dialog type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 475
    const-string/jumbo v8, " in SIM dialog."

    .line 474
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 436
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "arr":[Ljava/lang/String;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_6

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move/from16 v3, v21

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/sim/SimDialogActivity;->setupSmsSubInfoList(Ljava/util/ArrayList;Ljava/util/List;ILjava/util/ArrayList;)V

    goto :goto_2

    .line 440
    :cond_6
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 441
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    .line 442
    .restart local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v15

    .line 443
    .local v15, "displayName":Ljava/lang/CharSequence;
    if-nez v15, :cond_7

    .line 444
    const-string/jumbo v15, ""

    .line 446
    :cond_7
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 465
    .end local v15    # "displayName":Ljava/lang/CharSequence;
    .end local v16    # "i":I
    .end local v23    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "arr":[Ljava/lang/String;
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v6, 0x7f0b0a20

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 479
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/settings/sim/SimDialogActivity;->changeDialogTitle(Landroid/app/AlertDialog$Builder;I)V

    .line 481
    move-object/from16 v0, v22

    invoke-virtual {v12, v5, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 482
    .local v14, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 484
    new-instance v6, Lcom/android/settings/sim/SimDialogActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/sim/SimDialogActivity$7;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v14, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 491
    return-object v14

    .line 468
    .end local v14    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    const v6, 0x7f0b0a22

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 471
    :pswitch_2
    const v6, 0x7f0b0a2c

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 82
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->setSimStateCheck()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/settings/UtilsExt;->getRcsSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mRCSExt:Lcom/mediatek/settings/ext/IRCSSettings;

    .line 90
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 99
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 77
    :goto_0
    return-void

    .line 102
    :pswitch_1
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->unsetSimStateCheck()V

    .line 642
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 644
    iput-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 646
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 638
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 633
    invoke-static {p0}, Lcom/mediatek/settings/cdma/OmhEventHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/cdma/OmhEventHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/cdma/OmhEventHandler;->sendEmptyMessage(I)Z

    .line 634
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 631
    return-void
.end method
