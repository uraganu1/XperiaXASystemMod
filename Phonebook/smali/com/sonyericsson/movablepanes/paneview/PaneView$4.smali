.class Lcom/sonyericsson/movablepanes/paneview/PaneView$4;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


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
    .line 266
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$4;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->clearFocus()V

    .line 268
    :cond_0
    return-void
.end method
