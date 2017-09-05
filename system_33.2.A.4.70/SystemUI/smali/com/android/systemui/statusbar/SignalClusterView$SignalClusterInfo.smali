.class Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/mediatek/systemui/statusbar/extcb/ISignalClusterInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalClusterInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    return-void
.end method


# virtual methods
.method public getSecondaryTelephonyPadding()I
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v0

    return v0
.end method

.method public getWideTypeIconStartPadding()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get6(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v0

    return v0
.end method

.method public isAirplaneMode()Z
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    return v0
.end method

.method public isNoSimsVisible()Z
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    return v0
.end method

.method public isWifiIndicatorsVisible()Z
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$SignalClusterInfo;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    return v0
.end method
