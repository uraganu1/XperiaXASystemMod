.class Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimData"
.end annotation


# instance fields
.field public phoneId:I

.field public simMECategory:I

.field public simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public subId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    .line 891
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    .line 900
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 901
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    .line 902
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 899
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;III)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "meCategory"    # I

    .prologue
    const/4 v0, 0x0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    .line 891
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    .line 907
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 908
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->phoneId:I

    .line 909
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 910
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simMECategory:I

    .line 906
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 917
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 918
    const-string/jumbo v7, "mediatek.intent.action.ACTION_UNLOCK_SIM_LOCK"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 922
    :cond_0
    const/4 v2, 0x0

    .line 923
    .local v2, "meCategory":I
    const-string/jumbo v7, "ss"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 925
    .local v5, "stateExtra":Ljava/lang/String;
    const-string/jumbo v7, "slot"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 926
    .local v3, "phoneId":I
    const-string/jumbo v7, "subscription"

    .line 927
    const/4 v8, -0x1

    .line 926
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 928
    .local v6, "subId":I
    const-string/jumbo v7, "ABSENT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 930
    const-string/jumbo v7, "reason"

    .line 929
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "absentReason":Ljava/lang/String;
    const-string/jumbo v7, "PERM_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 934
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 982
    .end local v0    # "absentReason":Ljava/lang/String;
    .local v4, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v7, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v7, v4, v3, v6, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;III)V

    return-object v7

    .line 919
    .end local v2    # "meCategory":I
    .end local v3    # "phoneId":I
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v5    # "stateExtra":Ljava/lang/String;
    .end local v6    # "subId":I
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 936
    .restart local v0    # "absentReason":Ljava/lang/String;
    .restart local v2    # "meCategory":I
    .restart local v3    # "phoneId":I
    .restart local v5    # "stateExtra":Ljava/lang/String;
    .restart local v6    # "subId":I
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 938
    .end local v0    # "absentReason":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string/jumbo v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 939
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 940
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string/jumbo v7, "LOCKED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 942
    const-string/jumbo v7, "reason"

    .line 941
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "lockedReason":Ljava/lang/String;
    const-string/jumbo v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "INTENT_VALUE_ICC_LOCKED, lockedReason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-string/jumbo v7, "PIN"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 946
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 947
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string/jumbo v7, "PUK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 948
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 949
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string/jumbo v7, "NETWORK"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 950
    const/4 v2, 0x0

    .line 951
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 952
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    const-string/jumbo v7, "NETWORK_SUBSET"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 954
    const/4 v2, 0x1

    .line 955
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 956
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string/jumbo v7, "SERVICE_PROVIDER"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 958
    const/4 v2, 0x2

    .line 959
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 960
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    const-string/jumbo v7, "CORPORATE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 961
    const/4 v2, 0x3

    .line 962
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 963
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    const-string/jumbo v7, "SIM"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 964
    const/4 v2, 0x4

    .line 965
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 967
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 969
    .end local v1    # "lockedReason":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    const-string/jumbo v7, "NETWORK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 970
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 971
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_d
    const-string/jumbo v7, "LOADED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 972
    const-string/jumbo v7, "IMSI"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 971
    if-eqz v7, :cond_f

    .line 975
    :cond_e
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 976
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_f
    const-string/jumbo v7, "NOT_READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 977
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0

    .line 979
    .end local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_10
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v4    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
