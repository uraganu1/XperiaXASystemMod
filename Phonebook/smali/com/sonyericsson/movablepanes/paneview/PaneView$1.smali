.class Lcom/sonyericsson/movablepanes/paneview/PaneView$1;
.super Lcom/sonyericsson/movablepanes/util/Dynamics;
.source "PaneView.java"


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
    .line 197
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/movablepanes/util/Dynamics;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 0
    .param p1, "dt"    # I

    .prologue
    .line 204
    return-void
.end method

.method public setState(FFJ)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "now"    # J

    .prologue
    .line 199
    return-void
.end method
