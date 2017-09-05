.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPinPukMeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirPlaneModeChanged(Z)V
    .locals 4
    .param p1, "airPlaneModeEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 207
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAirPlaneModeChanged(airPlaneModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz p1, :cond_0

    .line 209
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "Flight-Mode turns on & keyguard is showing, dismiss keyguard."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get7(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 214
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public onSimStateChangedUsingPhoneId(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v3, 0x1

    .line 148
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChangedUsingPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, ", phoneId = "

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, ", mPhoneId = "

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChangedUsingPhoneId: mCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-virtual {v0, v3}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->resetState(Z)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get3(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p2, :cond_3

    .line 161
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    .line 184
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "assign mLastSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get5(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    :goto_1
    return-void

    .line 162
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, p2, :cond_4

    .line 163
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p2, :cond_5

    .line 165
    :cond_4
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChangedUsingPhoneId: not ready, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 167
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p2, :cond_1

    .line 168
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isMediatekSimMeLockSupport()Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get8(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap2(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    const-string/jumbo v1, "onSimStateChanged: ME retrycount is 0, dismiss it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    iget-object v0, v0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPinPukMeDismissFlagOfPhoneId(IZ)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0

    .line 185
    :cond_7
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get6(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 186
    const-string/jumbo v0, "KeyguardSimPinPukMeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChanged: mNextRepollStatePhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get6(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)I

    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get11(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 192
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, p2, :cond_9

    .line 194
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    .line 195
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-wrap9(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)V

    goto/16 :goto_1

    .line 198
    :cond_9
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-get0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$2;->this$0:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;

    invoke-static {v0, p2}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;->-set0(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_1
.end method
