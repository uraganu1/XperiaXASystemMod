.class abstract Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPinPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private mResult:[I

.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)[I
    .locals 1

    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    return-object v0
.end method

.method protected constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 665
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 666
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    .line 665
    return-void
.end method

.method protected constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    .line 670
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 671
    iput-object p3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    .line 670
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 8

    .prologue
    .line 680
    :try_start_0
    const-string/jumbo v3, "KeyguardSimPinPukMeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CheckSimPinPuk, mPhoneId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v5}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v3, v3, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 683
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 682
    if-ne v3, v4, :cond_3

    .line 687
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 688
    .local v1, "phoneService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 689
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 690
    .local v2, "subId":I
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    .line 709
    .end local v1    # "phoneService":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subId":I
    :cond_0
    :goto_0
    const-string/jumbo v3, "KeyguardSimPinPukMeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supplyPinReportResultForSubscriber returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 710
    iget-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 710
    const-string/jumbo v5, " "

    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 710
    iget-object v5, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string/jumbo v3, "KeyguardSimPinPukMeView"

    const-string/jumbo v4, "CheckSimPinPuk.run(),mResult is true(success), so we postDelayed a timeout runnable object"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_1

    .line 716
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/Runnable;

    move-result-object v4

    .line 717
    const-wide/16 v6, 0x1770

    .line 716
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    :cond_1
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;

    invoke-direct {v4, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$1;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    :goto_1
    return-void

    .line 692
    .restart local v1    # "phoneService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const-string/jumbo v3, "KeyguardSimPinPukMeView"

    const-string/jumbo v4, "phoneService is gone, skip supplyPinForSubscriber()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    .end local v1    # "phoneService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$2;

    invoke-direct {v4, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk$2;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v3, v3, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateOfPhoneId(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 695
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 694
    if-ne v3, v4, :cond_0

    .line 699
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 700
    .restart local v1    # "phoneService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_4

    .line 701
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 703
    .restart local v2    # "subId":I
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 702
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimPinPuk;->mResult:[I

    goto/16 :goto_0

    .line 705
    .end local v2    # "subId":I
    :cond_4
    const-string/jumbo v3, "KeyguardSimPinPukMeView"

    const-string/jumbo v4, "phoneService is gone, skip supplyPukForSubscriber()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
