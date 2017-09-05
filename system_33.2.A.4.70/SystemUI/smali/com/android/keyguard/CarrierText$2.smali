.class Lcom/android/keyguard/CarrierText$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/CarrierText;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 107
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText()V

    .line 98
    return-void
.end method

.method public onSimStateChangedUsingPhoneId(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText()V

    .line 103
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$2;->this$0:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 111
    return-void
.end method
