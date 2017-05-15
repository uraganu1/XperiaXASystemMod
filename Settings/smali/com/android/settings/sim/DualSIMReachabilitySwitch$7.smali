.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get4(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)[Landroid/widget/EditText;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "rawNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 477
    const-string/jumbo v2, "DualSIMReachabilitySwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDoneButton.onClick,  mSIMNumbers["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 478
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v6, v6, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v6, v6, v0

    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v1    # "rawNumber":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-boolean v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 482
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v6, v6, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    .line 481
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM1CFNRCNeedUpdate:Z

    .line 483
    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-boolean v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCFNumbers:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 484
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v6, v6, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIMNumbers:[Ljava/lang/String;

    aget-object v6, v6, v3

    .line 483
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, v5, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mSIM2CFNRCNeedUpdate:Z

    .line 486
    iget-object v2, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v2, v2, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v5, v5, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    .line 487
    iget-object v6, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$7;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-boolean v6, v6, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardStatus:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x3

    .line 486
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    return-void

    :cond_2
    move v2, v4

    .line 481
    goto :goto_1

    :cond_3
    move v2, v4

    .line 483
    goto :goto_2
.end method
