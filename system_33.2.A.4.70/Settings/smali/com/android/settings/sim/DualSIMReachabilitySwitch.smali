.class public Lcom/android/settings/sim/DualSIMReachabilitySwitch;
.super Landroid/app/Activity;
.source "DualSIMReachabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;,
        Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

.field private mButtonBackgound:Landroid/widget/LinearLayout;

.field mCFNumbers:[Ljava/lang/String;

.field mCFUEnabled:Z

.field mCallforwardStatus:Z

.field protected mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

.field private mCancelButton:Landroid/widget/Button;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDoneButton:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field mLineNumbers:[Ljava/lang/String;

.field private mListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field mNumPhones:I

.field private mNumberEditText:[Landroid/widget/EditText;

.field mRevertQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSIM1CFNRCEnabled:Z

.field mSIM1CFNRCNeedUpdate:Z

.field mSIM1CallWaiting:Z

.field private mSIM1Number:Landroid/widget/EditText;

.field mSIM2CFNRCEnabled:Z

.field mSIM2CFNRCNeedUpdate:Z

.field mSIM2CallWaiting:Z

.field private mSIM2Number:Landroid/widget/EditText;

.field mSIMNumbers:[Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findSubIdBySlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getOtherPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetDualSIMReachability(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->setChecked(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialogIfForeground(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/sim/DualSIMReachabilitySwitch;ZZ)V
    .locals 0
    .param p1, "isEnable"    # Z
    .param p2, "requestFocus"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateEditTextsStatus(ZZ)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateScreen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V
    .locals 0
    .param p1, "display"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->displayButtons(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleGetCFNRCResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleGetCFUResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleSetCFNRCResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/os/AsyncResult;II)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->handleSetCallWaitingResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V
    .locals 0
    .param p1, "reading"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onStarted(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processRevertActions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    .line 168
    new-instance v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$1;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    iput-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method private displayButtons(Z)V
    .locals 4
    .param p1, "display"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 403
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mButtonBackgound:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDoneButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 403
    goto :goto_0

    :cond_1
    move v0, v2

    .line 404
    goto :goto_1

    :cond_2
    move v1, v2

    .line 405
    goto :goto_2
.end method

.method private findSubIdBySlotId(I)I
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1087
    const/4 v0, -0x1

    .line 1088
    .local v0, "result":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1089
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1090
    aget v0, v1, v3

    .line 1093
    :cond_0
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findSubIdBySlotId: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1094
    const-string/jumbo v4, ", result = "

    .line 1093
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return v0
.end method

.method private getOtherPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static goUpToUpLevelSetting(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 534
    return-void
.end method

.method private handleGetCFNRCResponse(Landroid/os/AsyncResult;II)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    const/16 v7, 0x190

    .line 764
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCFResponse: done arg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 766
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCFResponse: ar.exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_1

    .line 768
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    const/16 v4, 0x12c

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 772
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 773
    invoke-direct {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 775
    :cond_3
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 776
    .local v1, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v1, :cond_4

    .line 777
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    const-string/jumbo v5, "handleGetCFResponse: cfInfoArray.length == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-direct {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 780
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 782
    aget-object v0, v1, v2

    .line 784
    .local v0, "c":Lcom/android/internal/telephony/CallForwardInfo;
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    iget v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    const-string/jumbo v6, ", status:"

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    iget v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 785
    const-string/jumbo v6, ", serviceClass:"

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 786
    iget v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 786
    const-string/jumbo v6, ", number:"

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 786
    iget-object v6, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 784
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    aget-object v4, v1, v2

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 791
    aget-object v4, v1, v2

    invoke-direct {p0, v4, p2, p3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processCFResponse(Lcom/android/internal/telephony/CallForwardInfo;II)V

    .line 780
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleGetCFUResponse(Landroid/os/AsyncResult;I)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/16 v7, 0x190

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 713
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 714
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCFUResponse: ar.exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_1

    .line 716
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const/16 v4, 0x12c

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 721
    invoke-direct {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 723
    :cond_3
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 724
    .local v1, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v1, :cond_4

    .line 725
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    const-string/jumbo v5, "handleGetCFUResponse: cfInfoArray.length == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 728
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 730
    aget-object v0, v1, v2

    .line 731
    .local v0, "c":Lcom/android/internal/telephony/CallForwardInfo;
    const-string/jumbo v4, "DualSIMReachabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleGetCFUResponse, cfInfoArray["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] reason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 732
    iget v8, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 732
    const-string/jumbo v8, ", status:"

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 732
    iget v8, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 732
    const-string/jumbo v8, ", serviceClass:"

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 733
    iget v8, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 733
    const-string/jumbo v8, ", number:"

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 733
    iget-object v8, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 731
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    aget-object v4, v1, v2

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 735
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    .line 740
    if-ne p2, v5, :cond_5

    iget-boolean v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    if-eqz v4, :cond_6

    :cond_5
    if-nez p2, :cond_7

    .line 741
    :cond_6
    aget-object v4, v1, v2

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    .line 748
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    if-eqz v4, :cond_9

    .line 749
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processStopDialog()V

    .line 752
    const/16 v4, 0xcd

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialogIfForeground(I)V

    .line 753
    return-void

    :cond_8
    move v4, v6

    .line 741
    goto :goto_2

    .line 756
    :cond_9
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v4, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->queryCallWaiting(I)V

    .line 728
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private handleGetCallWaitingResponse(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 871
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 872
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 878
    const/16 v1, 0x190

    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    .line 880
    :cond_3
    const-string/jumbo v3, "DualSIMReachabilitySwitch"

    const-string/jumbo v4, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 885
    .local v0, "cwArray":[I
    if-nez p2, :cond_5

    .line 886
    aget v3, v0, v2

    if-ne v3, v1, :cond_4

    aget v3, v0, v1

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    .line 887
    new-instance v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$17;->start()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 886
    goto :goto_1

    .line 907
    :cond_5
    if-ne p2, v1, :cond_0

    .line 908
    aget v3, v0, v2

    if-ne v3, v1, :cond_6

    aget v3, v0, v1

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_6

    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    .line 910
    new-instance v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch$18;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$18;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$18;->start()V

    goto :goto_0
.end method

.method private handleSetCFNRCResponse(Landroid/os/AsyncResult;II)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 986
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSetCFNRCResponse: done on Sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 989
    const-string/jumbo v3, "DualSIMReachabilitySwitch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSetCFNRCResponse: ar.exception = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 990
    const-string/jumbo v4, "error type:"

    .line 989
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 990
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 989
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 997
    :goto_0
    if-ne p3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->revertAction(Z)V

    .line 985
    :cond_0
    :goto_2
    return-void

    .line 995
    :cond_1
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 997
    goto :goto_1

    .line 998
    :cond_3
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 999
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    .line 1000
    if-ne p3, v1, :cond_4

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->revertAction(Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1003
    :cond_5
    if-nez p2, :cond_8

    .line 1004
    if-ne p3, v1, :cond_6

    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    .line 1011
    :goto_4
    if-eq p3, v1, :cond_7

    if-ne p3, v5, :cond_b

    .line 1013
    :cond_7
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    .line 1015
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1013
    invoke-virtual {v0, p2, v5, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getCallForwardingOption(IILandroid/os/Message;)V

    goto :goto_2

    .line 1005
    :cond_8
    if-ne p2, v1, :cond_a

    .line 1006
    if-ne p3, v1, :cond_9

    move v2, v1

    :cond_9
    iput-boolean v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    goto :goto_4

    .line 1008
    :cond_a
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    const-string/jumbo v2, "handleSetCFNRCResponse, wrong sim sub."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1016
    :cond_b
    const/4 v0, 0x2

    if-ne p3, v0, :cond_c

    .line 1017
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1019
    :cond_c
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private handleSetCallWaitingResponse(Landroid/os/AsyncResult;II)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1026
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 1028
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSetCallWaitingResponse: ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 1031
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onException(Lcom/android/internal/telephony/CommandException;)V

    .line 1035
    :goto_0
    if-ne p3, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->revertAction(Z)V

    .line 1025
    :cond_0
    :goto_2
    return-void

    .line 1033
    :cond_1
    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1035
    goto :goto_1

    .line 1037
    :cond_3
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSetCallWaitingResponse success arg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-nez p2, :cond_6

    .line 1039
    if-eq p3, v2, :cond_4

    if-ne p3, v7, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    .line 1046
    :goto_3
    if-ne p3, v2, :cond_a

    .line 1047
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    .line 1048
    const/4 v2, 0x5

    .line 1047
    invoke-virtual {v1, v2, p2, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1049
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, p3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1040
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    if-ne p2, v2, :cond_9

    .line 1041
    if-eq p3, v2, :cond_7

    if-ne p3, v7, :cond_8

    :cond_7
    move v3, v2

    :cond_8
    iput-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    goto :goto_3

    .line 1043
    :cond_9
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    const-string/jumbo v3, "handleSetCallWaitingResponse: wrong sim sub."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1052
    :cond_a
    const/4 v1, 0x2

    if-eq p3, v1, :cond_b

    if-ne p3, v7, :cond_c

    .line 1053
    :cond_b
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, p3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1055
    :cond_c
    if-ne p3, v8, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 422
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    .line 423
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    .line 424
    new-instance v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    .line 425
    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    .line 426
    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    .line 427
    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    .line 429
    const v2, 0x7f040066

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->setContentView(I)V

    .line 430
    const v2, 0x7f1300c0

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mMainLayout:Landroid/widget/LinearLayout;

    .line 431
    const v2, 0x7f1300bf

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDescriptionLayout:Landroid/widget/LinearLayout;

    .line 432
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getIsFirstTime()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v6}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getIsFirstTime()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    const v2, 0x7f1300c4

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1Number:Landroid/widget/EditText;

    .line 436
    const v2, 0x7f1300c7

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2Number:Landroid/widget/EditText;

    .line 437
    iget v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    new-array v2, v2, [Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    .line 439
    const v2, 0x7f1300c8

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mButtonBackgound:Landroid/widget/LinearLayout;

    .line 440
    const v2, 0x7f130044

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCancelButton:Landroid/widget/Button;

    .line 441
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/sim/DualSIMReachabilitySwitch$6;

    invoke-direct {v3, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$6;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v3, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhoneLinumber(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 450
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v3, v5}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhoneLinumber(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 452
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v2, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getStoredSIMNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    :goto_1
    aput-object v2, v3, v4

    .line 455
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v2, v5}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getStoredSIMNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    :goto_2
    aput-object v2, v3, v5

    .line 459
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLineNumbers[SUB1]:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", mLineNumbers[SUB2]:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 459
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    const-string/jumbo v6, ", mSIMNumbers[SUB1]:"

    .line 459
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    .line 459
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 461
    const-string/jumbo v6, ", mSIMNumbers[SUB2]:"

    .line 459
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 461
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 459
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->initEditTextStatus()V

    .line 466
    const v2, 0x7f1300c9

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDoneButton:Landroid/widget/Button;

    .line 467
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDoneButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 468
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    .line 467
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mDoneButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;

    invoke-direct {v3, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v2, 0x7f1300be

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 492
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 494
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4, v4, v1, v4}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 496
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 499
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 502
    :cond_1
    new-instance v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    iput-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 515
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 420
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "padding":I
    :cond_2
    move v2, v4

    .line 432
    goto/16 :goto_0

    .line 453
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto/16 :goto_1

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto/16 :goto_2

    :cond_5
    move v2, v5

    .line 468
    goto :goto_3

    :cond_6
    move v2, v4

    .line 467
    goto :goto_3
.end method

.method private initEditTextStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 318
    const v3, 0x7f1300c4

    const v4, 0x7f1300c7

    .line 317
    filled-new-array {v3, v4}, [I

    move-result-object v1

    .line 320
    .local v1, "numberEditTextIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-direct {p0, v5, v5}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateEditTextsStatus(ZZ)V

    .line 326
    new-instance v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;

    invoke-direct {v2, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$4;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    .line 339
    .local v2, "watcher":Landroid/text/TextWatcher;
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    if-ge v0, v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$5;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$5;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_1
    return-void
.end method

.method private onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 957
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showToast(I)V

    .line 960
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processStopDialog()V

    .line 956
    return-void
.end method

.method private onException(Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .param p1, "exception"    # Lcom/android/internal/telephony/CommandException;

    .prologue
    .line 949
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 950
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    .line 948
    :goto_0
    return-void

    .line 952
    :cond_0
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onError(I)V

    goto :goto_0
.end method

.method private onFinished()V
    .locals 1

    .prologue
    .line 971
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->removeDialog(I)V

    .line 972
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->removeDialog(I)V

    .line 970
    return-void
.end method

.method private onStarted(Z)V
    .locals 3
    .param p1, "reading"    # Z

    .prologue
    .line 965
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStarted, reading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsForeground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    if-eqz p1, :cond_0

    const/16 v0, 0xcc

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialogIfForeground(I)V

    .line 963
    return-void

    .line 967
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private processCFResponse(Lcom/android/internal/telephony/CallForwardInfo;II)V
    .locals 8
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "phoneId"    # I
    .param p3, "flag"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 800
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCFResponse: info.reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 801
    const-string/jumbo v5, ", info.status = "

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 801
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 802
    const-string/jumbo v5, ", phoneId = "

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 803
    const-string/jumbo v5, ", flag = "

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v4, v1, p2

    .line 808
    if-nez p2, :cond_6

    .line 809
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    .line 810
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 811
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 810
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    .line 820
    :goto_2
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v2, :cond_2

    .line 821
    if-eq p3, v2, :cond_0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getOtherPhoneId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v1, v4

    .line 823
    invoke-direct {p0, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getOtherPhoneId(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getOtherPhoneId(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {p0, v1, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->storeNumberAndImsi(ILjava/lang/String;)V

    .line 824
    if-ne p3, v2, :cond_1

    .line 826
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 827
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 834
    :cond_2
    if-nez p3, :cond_3

    .line 835
    if-nez p2, :cond_a

    .line 837
    new-instance v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch$16;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$16;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$16;->start()V

    .line 798
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, v3

    .line 809
    goto :goto_0

    :cond_5
    move v1, v2

    .line 810
    goto :goto_1

    .line 812
    :cond_6
    if-ne p2, v2, :cond_9

    .line 813
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    .line 814
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 815
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 814
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    goto :goto_2

    :cond_7
    move v1, v3

    .line 813
    goto :goto_4

    :cond_8
    move v1, v2

    .line 814
    goto :goto_5

    .line 817
    :cond_9
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    const-string/jumbo v4, "processCFResponse, wrong sim sub"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 857
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processStopDialog()V

    .line 860
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processCFResponse, mCFUEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 861
    const-string/jumbo v5, ", mSIM1CFNRCEnabled:"

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 861
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 861
    const-string/jumbo v5, ", mSIM1CallWaiting:"

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 862
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 862
    const-string/jumbo v5, ", mSIM2CFNRCEnabled:"

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 862
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 863
    const-string/jumbo v5, ", mSIM2CallWaiting:"

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 863
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 863
    const-string/jumbo v5, ", SUB1 CFNRC Number:"

    .line 860
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 864
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v3, v5, v3

    .line 860
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 864
    const-string/jumbo v4, ", SUB2 CFNRC Number:"

    .line 860
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 864
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v2, v4, v2

    .line 860
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private processRevertActions()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 152
    .local v6, "msg":Landroid/os/Message;
    iget v0, v6, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    iget v1, v6, Landroid/os/Message;->arg1:I

    .line 156
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    iget v4, v6, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getOtherPhoneId(I)I

    move-result v4

    aget-object v4, v3, v4

    .line 155
    const/4 v3, 0x3

    move v5, v2

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->setCallForwardingOption(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 157
    :cond_0
    iget v0, v6, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    iget v1, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->setCallWaiting(IZLandroid/os/Message;)V

    goto :goto_0

    .line 160
    :cond_1
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    const-string/jumbo v1, "revert: impossible case "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processStopDialog()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method

.method private processSetCallForward(IIILandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    new-instance v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;IIILandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$3;->start()V

    .line 295
    return-void
.end method

.method private processSetCallWaiting(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 276
    new-instance v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;IZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$2;->start()V

    .line 275
    return-void
.end method

.method private processSetDualSIMReachability(I)V
    .locals 9
    .param p1, "flag"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 224
    const-string/jumbo v3, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processSetDualSIMReachability, mSIM1CFNRCEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 225
    const-string/jumbo v5, ", mSIM1CallWaiting:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 225
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 225
    const-string/jumbo v5, ", mSIM2CFNRCEnabled:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    const-string/jumbo v5, ", mSIM2CallWaiting:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    const-string/jumbo v5, ", mCallforwardStatus:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    const-string/jumbo v5, ", mSIM1CFNRCNeedUpdate:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    const-string/jumbo v5, ", mSIM2CFNRCNeedUpdate:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 229
    const-string/jumbo v5, ", flag:"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v3, 0xc8

    invoke-direct {p0, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialogIfForeground(I)V

    .line 234
    if-eq p1, v6, :cond_0

    if-ne p1, v2, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 235
    .local v0, "enable":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    if-eqz v3, :cond_5

    .line 236
    :cond_2
    if-eqz v0, :cond_3

    move v1, v2

    .line 238
    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v6, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 236
    invoke-direct {p0, v6, v1, v2, v3}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallForward(IIILandroid/os/Message;)V

    .line 240
    return-void

    .line 234
    .end local v0    # "enable":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 243
    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    if-eqz v3, :cond_7

    :cond_6
    if-nez v0, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    if-eqz v3, :cond_8

    .line 245
    :cond_7
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 244
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallWaiting(IZLandroid/os/Message;)V

    .line 246
    return-void

    .line 249
    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    if-eqz v3, :cond_a

    :cond_9
    if-nez v0, :cond_b

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    if-eqz v3, :cond_b

    .line 251
    :cond_a
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, v6, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 250
    invoke-direct {p0, v6, v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallWaiting(IZLandroid/os/Message;)V

    .line 252
    return-void

    .line 255
    :cond_b
    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    if-nez v3, :cond_d

    :cond_c
    if-nez v0, :cond_f

    iget-boolean v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    if-eqz v3, :cond_f

    .line 256
    :cond_d
    if-eqz v0, :cond_e

    move v3, v2

    .line 258
    :goto_1
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 256
    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processSetCallForward(IIILandroid/os/Message;)V

    .line 260
    return-void

    :cond_e
    move v3, v1

    .line 257
    goto :goto_1

    .line 263
    :cond_f
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_10

    .line 264
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 266
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->processStopDialog()V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->validateXDivert()Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f0b0cd1

    .line 267
    :goto_2
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 271
    return-void

    .line 269
    :cond_11
    const v1, 0x7f0b0cd2

    goto :goto_2
.end method

.method private processStopDialog()V
    .locals 2

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onFinished()V

    .line 695
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    return-void
.end method

.method private revertAction(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 977
    if-eqz p1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mRevertQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 518
    :cond_0
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialog(I)V

    .line 1080
    :cond_0
    return-void
.end method

.method private startReachabilityStatusQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1073
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1074
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialog(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    .line 1077
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1075
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1072
    return-void
.end method

.method private storeNumberAndImsi(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, p2, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->storeNumber(Ljava/lang/String;I)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, p1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->saveSIMImsi(I)V

    .line 659
    return-void
.end method

.method private updateEditTextsStatus(ZZ)V
    .locals 8
    .param p1, "isEnable"    # Z
    .param p2, "requestFocus"    # Z

    .prologue
    const/4 v7, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "hasRequestFocus":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    if-ge v1, v3, :cond_8

    .line 353
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 356
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 355
    invoke-virtual {v4, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 358
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 352
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 361
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 362
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 361
    invoke-virtual {v4, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_2
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 365
    if-eqz p1, :cond_3

    .line 366
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 367
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 369
    :cond_3
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 372
    if-eqz p1, :cond_4

    if-eqz p2, :cond_7

    .line 382
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 383
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 385
    if-eqz p2, :cond_5

    .line 386
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 388
    const-string/jumbo v4, "input_method"

    .line 387
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 389
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v3, 0x2

    invoke-virtual {v2, v7, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 392
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 395
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 375
    const-string/jumbo v4, "input_method"

    .line 374
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 378
    iget-object v3, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumberEditText:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    .line 350
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    return-void
.end method

.method private updateScreen()V
    .locals 3

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->validateXDivert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    .line 700
    const-string/jumbo v0, "DualSIMReachabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreen, mCallforwardStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateSwitchButtonStatus()V

    .line 702
    iget-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    invoke-direct {p0, v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->setChecked(Z)V

    .line 703
    iget-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateEditTextsStatus(ZZ)V

    .line 698
    return-void
.end method

.method private validateXDivert()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "CFReachabilityEnabled":Z
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 670
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 669
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    .line 671
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 672
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 671
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    .line 674
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    if-eqz v1, :cond_0

    .line 675
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    if-eqz v1, :cond_3

    .line 674
    :cond_0
    const/4 v0, 0x0

    .line 679
    :goto_2
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateXDivert, mSIM1CFNRCEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 680
    const-string/jumbo v5, ", mSIM1CallWaiting:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 680
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CallWaiting:Z

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 680
    const-string/jumbo v5, ", mSIM2CFNRCEnabled:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 681
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 681
    const-string/jumbo v5, ", mSIM2CallWaiting:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 681
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CallWaiting:Z

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 682
    const-string/jumbo v5, ", mSIM1CFNRCNeedUpdate:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 682
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 682
    const-string/jumbo v5, ", mSIM2CFNRCNeedUpdate:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 683
    iget-boolean v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 683
    const-string/jumbo v5, ", CFReachabilityEnabled:"

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string/jumbo v1, "DualSIMReachabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateXDivert, mLineNumbers[SUB1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 686
    const-string/jumbo v5, ", mLineNumbers[SUB2]:"

    .line 685
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 686
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 685
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 686
    const-string/jumbo v5, ", mSIMNumbers[SUB1]:"

    .line 685
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 687
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v2, v5, v2

    .line 685
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 687
    const-string/jumbo v4, ", mSIMNumbers[SUB2]:"

    .line 685
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 687
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v0

    :cond_1
    move v1, v3

    .line 669
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 671
    goto/16 :goto_1

    .line 675
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    if-nez v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->init()V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->updateSwitchButtonStatus()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->startReachabilityStatusQuery()V

    .line 140
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const v9, 0x104000a

    const/4 v8, 0x4

    const v7, 0x7f0b0ccf

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 540
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    .line 541
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 542
    .local v3, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 544
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 545
    const v4, 0x7f0b0cda

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 546
    return-object v3

    .line 547
    .end local v3    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    const/16 v4, 0xcc

    if-ne p1, v4, :cond_1

    .line 548
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 549
    .restart local v3    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 551
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 552
    const v4, 0x7f0b0cd6

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 553
    return-object v3

    .line 554
    .end local v3    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    const/16 v4, 0xc9

    if-ne p1, v4, :cond_2

    .line 555
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 556
    .restart local v3    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0, v7}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 557
    const v4, 0x7f0b0cd9

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 558
    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$9;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$9;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 567
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 568
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 569
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 570
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 571
    return-object v3

    .line 572
    .end local v3    # "dialog":Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0xca

    if-ne p1, v4, :cond_5

    .line 573
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 575
    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mLineNumbers:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 576
    const v4, 0x7f0b0cd5

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 580
    :goto_0
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 581
    new-instance v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    .line 589
    .local v0, "arg1":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$11;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$11;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 597
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 599
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    .line 600
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 656
    .end local v0    # "arg1":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    return-object v4

    .line 578
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const v4, 0x7f0b0cd4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 601
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const/16 v4, 0xcb

    if-ne p1, v4, :cond_6

    .line 602
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 604
    const v4, 0x7f0b0cd3

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 605
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 606
    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$12;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$12;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$13;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$13;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    new-instance v4, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;

    invoke-direct {v4, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    .line 620
    const v5, 0x7f0b0cd8

    .line 619
    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 637
    .restart local v2    # "dialog":Landroid/app/AlertDialog;
    return-object v2

    .line 638
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_6
    const/16 v4, 0xcd

    if-ne p1, v4, :cond_3

    .line 639
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0cd7

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 642
    const v4, 0x7f0b0cc9

    .line 641
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 643
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 644
    new-instance v0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$15;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$15;-><init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V

    .line 650
    .restart local v0    # "arg1":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 653
    .restart local v2    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    .line 654
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 527
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 528
    invoke-static {p0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->goUpToUpLevelSetting(Landroid/app/Activity;)V

    .line 529
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    .line 415
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    .line 409
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "msgId":I
    sparse-switch p1, :sswitch_data_0

    .line 943
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 944
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 932
    :cond_0
    return-void

    .line 937
    :sswitch_0
    const v0, 0x7f0b0cdc

    .line 938
    goto :goto_0

    .line 940
    :sswitch_1
    const v0, 0x7f0b0cdd

    .line 941
    goto :goto_0

    .line 934
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateSwitchButtonStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1062
    iget-boolean v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFUEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->isSubActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->isSubActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhoneState(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1061
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v0, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->getPhoneState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method
