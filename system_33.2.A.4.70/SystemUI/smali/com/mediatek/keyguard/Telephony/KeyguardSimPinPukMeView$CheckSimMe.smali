.class abstract Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;
.super Ljava/lang/Thread;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimMe"
.end annotation


# instance fields
.field private final mPasswd:Ljava/lang/String;

.field private mResult:I

.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;


# direct methods
.method static synthetic -get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mResult:I

    return v0
.end method

.method protected constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    .line 748
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 749
    iput-object p2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mPasswd:Ljava/lang/String;

    .line 748
    return-void
.end method


# virtual methods
.method abstract onSimMeCheckResponse(I)V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 756
    :try_start_0
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckMe, mPhoneId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUtils;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 758
    .local v1, "subId":I
    const-string/jumbo v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 759
    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mPasswd:Ljava/lang/String;

    .line 758
    invoke-interface {v2, v1, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mResult:I

    .line 760
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CheckMe, mPhoneId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v4}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->mResult:I

    if-nez v2, :cond_0

    .line 764
    const-string/jumbo v2, "KeyguardSimPinPukMeView"

    const-string/jumbo v3, "CheckSimMe.run(), VERIFY_RESULT_PASS == ret, so we postDelayed a timeout runnable object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/Runnable;

    move-result-object v3

    .line 767
    const-wide/16 v4, 0x1770

    .line 766
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;

    invoke-direct {v3, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$1;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v1    # "subId":I
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$2;

    invoke-direct {v3, p0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$2;-><init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
