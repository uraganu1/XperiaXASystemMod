.class Lcom/mediatek/widget/ChartBandwidthUsageView$1;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/mediatek/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/ChartBandwidthUsageView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 123
    if-eqz p2, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0, p1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-wrap0(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get1(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanged()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-wrap1(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanging()V

    goto :goto_0
.end method

.method public requestEdit(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get1(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->-get0(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->requestLimitEdit()V

    .line 136
    :cond_0
    return-void
.end method
