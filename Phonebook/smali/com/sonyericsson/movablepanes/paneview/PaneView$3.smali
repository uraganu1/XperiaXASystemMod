.class Lcom/sonyericsson/movablepanes/paneview/PaneView$3;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 248
    if-eqz p2, :cond_1

    .line 249
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 250
    .local v3, "position":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getAdapter()Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getColumnsCount()I

    move-result v1

    .line 251
    .local v1, "columnCount":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getAdapter()Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->getCellSize()I

    move-result v0

    .line 252
    .local v0, "cellSize":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getFirstVisiblePosition()I

    move-result v5

    add-int v4, v5, v1

    .line 253
    .local v4, "upThreshold":I
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v5}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getLastVisiblePosition()I

    move-result v5

    sub-int v2, v5, v1

    .line 255
    .local v2, "downThreshold":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 256
    return-void

    .line 257
    :cond_0
    if-ge v3, v4, :cond_2

    .line 258
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    neg-int v6, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scroll(F)V

    .line 247
    .end local v0    # "cellSize":I
    .end local v1    # "columnCount":I
    .end local v2    # "downThreshold":I
    .end local v3    # "position":I
    .end local v4    # "upThreshold":I
    :cond_1
    :goto_0
    return-void

    .line 259
    .restart local v0    # "cellSize":I
    .restart local v1    # "columnCount":I
    .restart local v2    # "downThreshold":I
    .restart local v3    # "position":I
    .restart local v4    # "upThreshold":I
    :cond_2
    if-le v3, v2, :cond_1

    .line 260
    iget-object v5, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$3;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scroll(F)V

    goto :goto_0
.end method
