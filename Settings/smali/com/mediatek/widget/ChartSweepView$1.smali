.class Lcom/mediatek/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/ChartSweepView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mediatek/widget/ChartSweepView$1;->this$0:Lcom/mediatek/widget/ChartSweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView$1;->this$0:Lcom/mediatek/widget/ChartSweepView;

    invoke-static {v0}, Lcom/mediatek/widget/ChartSweepView;->-wrap0(Lcom/mediatek/widget/ChartSweepView;)V

    .line 156
    return-void
.end method
