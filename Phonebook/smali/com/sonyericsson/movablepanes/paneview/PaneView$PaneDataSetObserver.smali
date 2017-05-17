.class Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaneDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->onDataChanged(Z)V

    .line 106
    return-void
.end method
