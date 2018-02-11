.class public Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallforwardUtility"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field private simImsis:[Ljava/lang/String;

.field private simNumbers:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1108
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "REACHABILITY_sim_imsi_key0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "REACHABILITY_sim_imsi_key1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simImsis:[Ljava/lang/String;

    .line 1103
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "REACHABILITY_LINE_NUMBER1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "REACHABILITY_LINE_NUMBER2"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simNumbers:[Ljava/lang/String;

    .line 1109
    iput-object p2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    .line 1108
    return-void
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 1194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    return-object v1
.end method


# virtual methods
.method protected getCallForwardingOption(IILandroid/os/Message;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1219
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallForwardingOption, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1220
    const-string/jumbo v2, ", commandInterfaceCFReason:"

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1220
    const-string/jumbo v2, ", message:"

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1217
    return-void
.end method

.method protected getIsFirstTime()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1146
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "REACHABILITY_first_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1147
    .local v0, "firstTime":I
    if-ne v0, v4, :cond_0

    const/4 v1, 0x1

    .line 1149
    .local v1, "isFirstTime":Z
    :goto_0
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIsFirstTime: isFirstTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v1

    .line 1147
    .end local v1    # "isFirstTime":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isFirstTime":Z
    goto :goto_0
.end method

.method protected getPhoneLinumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1155
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method protected getSIMImsi(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1115
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simImsis:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 1114
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "simImsi":Ljava/lang/String;
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSIMImsi: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1118
    const-string/jumbo v3, ", simImsi = "

    .line 1117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-object v0
.end method

.method protected getStoredSIMNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1160
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getSIMImsi(I)Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "storedSIMImsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get5(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v3, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1164
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simNumbers:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 1163
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "storedSIMNumber":Ljava/lang/String;
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStoredSIMNumber: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1167
    const-string/jumbo v4, ", storedSIMNumber = "

    .line 1166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-object v1

    .line 1172
    .end local v1    # "storedSIMNumber":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStoredSIMNumber null  with phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-object v5
.end method

.method protected isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1256
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1257
    const-string/jumbo v2, "airplane_mode_on"

    .line 1256
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isSubActive(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "cardActive":Z
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I

    move-result v1

    .line 1209
    .local v1, "subId":I
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v2

    .line 1209
    if-eqz v2, :cond_0

    .line 1211
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 1213
    .end local v0    # "cardActive":Z
    :goto_0
    return v0

    .line 1209
    .restart local v0    # "cardActive":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected queryCallWaiting(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x3

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1242
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1241
    return-void
.end method

.method protected saveSIMImsi(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1125
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get5(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "simImsi":Ljava/lang/String;
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveSIMImsi: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1128
    const-string/jumbo v3, ", simImsi = "

    .line 1127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    return-void

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simImsis:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1124
    return-void
.end method

.method protected setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "commandInterfaceCFReason"    # I
    .param p4, "dialingNumber"    # Ljava/lang/String;
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1232
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--->setCallForwardingOption, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1233
    const-string/jumbo v2, ", action:"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1233
    const-string/jumbo v2, ", reason:"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1234
    const-string/jumbo v2, ", number:"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1234
    const-string/jumbo v2, ", time:"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1235
    const-string/jumbo v2, ", Message:"

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1235
    invoke-virtual {p6}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1229
    return-void
.end method

.method protected setCallWaiting(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1251
    return-void
.end method

.method protected setIsFirstTime(Z)V
    .locals 3
    .param p1, "isFirstTime"    # Z

    .prologue
    .line 1139
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsFirstTime: isFirstTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "REACHABILITY_first_time"

    .line 1142
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1141
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    return-void

    .line 1142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected storeNumber(Ljava/lang/String;I)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 1181
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storeNumber: number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1182
    const-string/jumbo v2, ", phoneId = "

    .line 1181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->simNumbers:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1179
    return-void
.end method
