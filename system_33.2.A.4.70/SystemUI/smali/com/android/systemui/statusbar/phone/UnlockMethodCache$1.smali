.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceUnlockStateChanged(ZI)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 143
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-get0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 135
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 130
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 148
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 120
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 125
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 115
    return-void
.end method
